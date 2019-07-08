# Group Hint Tags

- **Name:**  urn:x-nmos:tag:grouphint/v1.0
  - **Description:** Group description tag that can be used in a JSON description for an NMOS resource v1.0.
  - **Proponent:** [AMWA](https://github.com/AMWA-TV/)

This document describes an application of the AMWA IS-04 “tags” structures to enable control systems to identify relationships between NMOS resources listed in a registry or node.

The values of the grouphint tag are an **immutable** property of the resource.  

## Introduction

Since AMWA IS-04 v1.0, NMOS resources contain a “tags” field that has not been used in a standard way.  However when the control systems are trying to control multiple NMOS devices there is no defined way of representing related resources together.

The initial goal of the group hints definition is to have an easy way of identifying natural groups of sources and destinations.  This document defines a clear way of identifying natural groups in the NMOS registry but it does not limit usage of these tags to natural grouping.  The only requirement is to respect the rules for natural grouping.

Natural grouping can be defined as the default relationship between senders or receivers inside a node.  This relationship SHOULD remain the same inside a similar device (hardware or software) and it is mostly to help build relationship.  Natural groups are not created by users in a dynamic way, they are defined by device manufacturers.

A good example of a natural group would be a device named "camera" that produces one video and two audio streams.  A natural group for this device could be named "camera" and each sender should carry the group tag "camera".  Natural grouping is by devices by default and the same group name may be used in all the camera devices.  Then a role SHOULD be assigned to each sender so we can differenciate the senders within the same group.

Result will be something like this:

Video group : "Camera" role: "Primary"

Audio 1 group : "Camera" role: "Audio 1"

Audio 2 group : "Camera" role: "Audio 2" 

It is expected that system controllers use the natural group hints to guide users through a process of associating production meaning and naming with the NMOS resources.  This is inherently a setup/configuration-time task.  If the natural group hint tag changes later, there is not necessarily an opportunity to re-ask the user if/how that change affects the overall system naming and mapping configuration.  That’s why immutability is important for natural grouping and it MUST be respected.

## Group hint URN

The group hint urn ‘urn:x-nmos:tag:grouphint’ defines a set of groups to which a resource belongs to.

```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "{group-name}:{role-in-group}:{optional-group-scope}"
   ]
}
```

Where

| Parameter | Description | Values  |
| ------------- | ------------------------------ | ------ |
| group-name    | A string that defines the name of the group. | Any string not containing ":" |
| role-in-group     | A string that defines the role of the resource in the group, MUST be unique inside the same group |   Any string not containing ":" |
| optional-group-scope | Optional string that defines the scope of the group, MUST be 'device' or 'node'     | "device" (default) or "node"  |

The colon character is therefore reserved and MUST not be used in any of the parameters listed.

#### group-name rules

- Group names and roles exist only at the scope boundary.  No relationship can be resolved between two resources using the same group tag if outside the scope boundary.
- If the group hint tag is missing, no assumption MUST be made on relationships.
- If the group hint tag is present but contains an empty string, no assumption MUST be made on relationships.
- If a group hint tag is present inside a resource within the same scope which have matching values of this tag MUST be considered as related members of a group by a controlling entity.
- If multiple group tags are present in the same resource, resource can be considered part of multiple groups if this applies
- A resource may contain multiple group hints but special rules apply to senders and receiver for natural grouping.
- Group names SHOULD be easy to read and long IDs such as UUIDs SHOULD be avoided.


#### role-in-group rules

- Resources within the same group MUST use the role to differentiate themselves.
- Roles MUST be unique within the same group.
- Roles SHOULD be used to index a sender or a receiver inside a group and it SHOULD be easy to sort on alphanumerical values (example: "... audio 09, audio 10, audio 11") 
- Group roles SHOULD be easy to read and long IDs such as UUIDs SHOULD be avoided.

NOTE: There are no standard roles (or reserved role names) defined in this document.  However this may be defined in the future inside the NMOS parameters register. 


#### optional-group-scope rules

- Missing "optional-group-scope" assumes a default "device" scope.  To extend the group scope to a node, "node" scope MUST be specified.
- Note that extending a scope to "node" can lead to performance impact on the controller side since more work is required to track down the relationships.

NOTE: There might be a need for a "system" scope in the future (group across multiple nodes) but this is out of the natural grouping described in this document.  The system scope may be defined in the future inside the NMOS parameters register.


## Natural groups

Natural groups applies only to NMOS senders and receivers

-	If “urn:x-nmos:tag:grouphint” tags array of string contains more than one string, only the first string in the JSON array of strings (index 0) is considered as the natural group.
-	Senders and Receivers may both contain matching values of the “urn:x-nmos:tag:grouphint” tag, indicating that the group has elements in both signal flow directions.


### Examples

#### 1. Playout server sender with 1 video 2 audio
- Video 1 group : “Playout Master”
- Video 1 role: “Primary”
- Audio 1 group : “Playout Master”
- Audio 1 role: “Audio 1 – 2ch”
- Audio 2 group : “Playout Master”
- Audio 2 role: “Audio 2 – 5.1ch”

JSON tags for Video 1 sender
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "Playout Master:Primary"
   ]
}
```

JSON tags for Audio 1 sender
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "Playout Master:Audio 1 – 2ch"
   ]
}
```

JSON tags for Audio 2 sender
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "Playout Master:Audio 2 – 5.1ch"
   ]
}
```

#### 2. MultiviewerPIP, receiver with 1 video 4 audio
- Video 1 group : “MV PIP 1”
- Video 1 role: “Video”
- Audio 1 group : “MV PIP 1”
- Audio 1 role: “Audio 1”
- Audio 2 group : “MV PIP 1”
- Audio 2 role: “Audio 2”


JSON tags for Video 1 receiver
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "MV PIP 1:Video"
   ]
}
```

JSON tags for Audio 1 receiver
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "MV PIP 1:Audio 1"
   ]
}
```
JSON tags for Audio 2 receiver
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "MV PIP 1:Audio 2"
   ]
}
```

#### 2. Multiple groups

Multiple groups are mainly for usage outside "natural grouping".

JSON tags for Video 1 receiver and tally
```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "MV PIP 1:Video",
      "tally:left:node"
   ]
}
```

This defines an extra membership to tally group valid for the entire node scope.


## NMOS resource JSON samples

- Receivers with tags

```json
{
   "format": "urn:x-nmos:format:video",
   "caps": {},
   "device_id": "8570e409-eb39-4c28-b083-fb2be5d44abe",
   "transport": "urn:x-nmos:transport:rtp.mcast",
   "interface_bindings": [],
   "subscription": {
      "sender_id": null,
      "active": true
   },
   "id": "51e6b7ef-7061-4121-b8d3-426527d3ac4f",
   "version": "1525121173:668000000",
   "label": "GV[KIP_AMWA] Video 1",
   "description": "(KIP_AMWA@10.37.65.20) MV node receiver 1 ID VIDEO index:1",
   "tags": {
      "urn:x-nmos:tag:grouphint/v1.0": [
         "IP input 1:Video 1"
      ]
   }
}
```

```json
{
   "format": "urn:x-nmos:format:audio",
   "caps": {},
   "device_id": "8570e409-eb39-4c28-b083-fb2be5d44abe",
   "transport": "urn:x-nmos:transport:rtp.mcast",
   "interface_bindings": [],
   "subscription": {
      "sender_id": null,
      "active": true
   },
   "id": "51e6b7ef-7061-4121-b8d3-426527d3ac4f",
   "version": "1525121173:668000000",
   "label": "GV[KIP_AMWA] Audio 1",
   "description": "(KIP_AMWA@10.37.65.20) MV node receiver 1 ID AUDIO index:1",
   "tags": {
      "urn:x-nmos:tag:grouphint/v1.0": [
         "IP input 1:Audio 1"
      ]
   }
}
```

```json
{
   "format": "urn:x-nmos:format:audio",
   "caps": {},
   "device_id": "8570e409-eb39-4c28-b083-fb2be5d44abe",
   "transport": "urn:x-nmos:transport:rtp.mcast",
   "interface_bindings": [],
   "subscription": {
      "sender_id": null,
      "active": true
   },
   "id": "51e6b7ef-7061-4121-b8d3-426527d3ac4f",
   "version": "1525121173:668000000",
   "label": "GV[KIP_AMWA] Audio 2",
   "description": "(KIP_AMWA@10.37.65.20) MV node receiver 1 ID AUDIO index:2",
   "tags": {
      "urn:x-nmos:tag:grouphint/v1.0": [
         "IP input 1:Audio 2"
      ]
   }
}
```
