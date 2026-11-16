# Group Hint Tags

- **Name:**  urn:x-nmos:tag:grouphint/v1.0
  - **Description:** Group description tag that can be used in a JSON description for an NMOS resource v1.0.
  - **Proponent:** [AMWA](https://www.amwa.tv/)

This document describes an application of the AMWA IS-04 `tags` structures to enable control systems to identify relationships between NMOS resources listed in a registry or node.

The values of the grouphint tag are an **immutable** property of the resource.

## Introduction

Since AMWA IS-04 v1.0, NMOS resources contain a `tags` field that has not been used in a standard way. However when the control systems are trying to control multiple NMOS devices there is no defined way of representing related resources together.

The initial goal of the group hints definition is to have an easy way of identifying natural groups of sources and destinations. This document defines a clear way of identifying natural groups in the NMOS registry but it does not limit usage of these tags to natural grouping. The only requirement is to respect the rules for natural grouping.

Natural grouping can be defined as the default relationship between senders or receivers inside a node. This relationship SHOULD remain the same inside a similar device (hardware or software) and it is mostly to help build relationships. Natural groups are not created by users in a dynamic way, they are defined by device manufacturers.

A good example of a natural group would be a device named "camera" that produces one video and two audio streams. A natural group for this device could be named "camera" and each sender would carry the group tag "camera". Natural grouping is by devices by default and the same group name can be used in all the camera devices. Then a role SHOULD be assigned to each sender so we can differentiate the senders within the same group.

Result will be something like this:

- Video group: "camera", role: "Primary"
- Audio 1 group: "camera", role: "Audio 1"
- Audio 2 group: "camera", role: "Audio 2"

It is expected that system controllers use the natural group hints to guide users through a process of associating production meaning and naming with the NMOS resources. This is inherently a setup/configuration-time task. If the natural group hint tag changes later, there is not necessarily an opportunity to re-ask the user if/how that change affects the overall system naming and mapping configuration. That's why immutability is important for natural grouping and it MUST be respected.

## Group Hint URN

The group hint URN `urn:x-nmos:tag:grouphint` defines a set of groups to which a resource belongs.

```json
"tags": {
   "urn:x-nmos:tag:grouphint/v1.0": [
      "<group-name>:<role-in-group>[:<group-scope>]"
   ]
}
```

Where `<`...`>` indicates the named parameters and `[`...`]` indicates that component of the string can be omitted.
Several examples are given below.

| Parameter | Description | Values |
| --------- | ----------- | ------ |
| group-name | The name of the group | Any string not containing `:` |
| role-in-group | The role of the resource in the group, MUST be unique among resources of the same type inside the same group | Any string not containing `:` |
| group-scope | The scope of the group, MUST be `device` or `node` | `device` (default) or `node` |

The colon character, `:`, is therefore reserved and MUST NOT be used in any of the parameters listed.

#### group-name rules

- Group names and roles exist only at the scope boundary. No relationship can be resolved between two resources using the same group tag if outside the scope boundary.
- If the group hint tag is missing or is an empty array, a controlling entity MUST NOT assume any relationship between the resource and other resources.
- A controlling entity MUST NOT treat an empty string in the group hint tag as membership of any group.
- Resources within the same scope whose group hint tag values have the same group name MUST be considered by a controlling entity as related members of that group.
- A resource MAY have multiple values in the group hint tag, and is then a member of each of those groups. Special rules apply to Senders and Receivers for natural grouping.
- Group names MAY be used to index groups within the same scope and so nodes SHOULD make it easy to sort on alphanumerical values (example: ..., 'SDI 09', 'SDI 10', 'SDI 11', ...)
- Group names SHOULD be easy to read and long IDs such as UUIDs SHOULD be avoided.

#### role-in-group rules

- Resources within the same group MUST use the role to differentiate themselves.
- Roles MUST be unique among resources of the same type within the same group. For example, a Sender and a Receiver in the same group MAY have the same role.
- Roles SHOULD be used to index a sender or a receiver inside a group and so nodes SHOULD make it easy to sort on alphanumerical values (example: ..., 'audio 09', 'audio 10', 'audio 11', ...)
- Group roles SHOULD be easy to read and long IDs such as UUIDs SHOULD be avoided.

NOTE: There are no standard roles (or reserved role names) defined in this document. However these might be defined in the future inside the NMOS parameters register.

#### group-scope rules

- Omitting group-scope implies the default `device` scope. To extend the group scope to a node, `node` scope MUST be specified.
- Note that extending a scope to `node` can lead to performance impact on the controller side since more work is needed to track down the relationships.

NOTE: There might be a need for a "system" scope in the future (group across multiple nodes) but this is out of the natural grouping described in this document. The system scope might be defined in the future inside the NMOS parameters register.

## Natural Groups

Natural groups apply only to NMOS senders and receivers.

-	If the `urn:x-nmos:tag:grouphint` tag array contains more than one string, a controlling entity MUST consider only the first string in the array (index 0) as the natural group.
-	If the first string is empty, a controlling entity MUST NOT treat the resource as a member of any natural group.
-	Senders and Receivers MAY both have `urn:x-nmos:tag:grouphint` tag values with the same group name, indicating that the group has elements in both signal flow directions.

### Examples

#### 1. Playout server sender with 1 video 2 audio

- Video 1 group: "Playout Master", role: "Primary"
- Audio 1 group: "Playout Master", role: "Audio 1 – 2ch"
- Audio 2 group: "Playout Master", role: "Audio 2 – 5.1ch"

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

#### 2. Multiviewer PIP, receiver with 1 video 2 audio

- Video 1 group: "MV PIP 1", role: "Video"
- Audio 1 group: "MV PIP 1", role: "Audio 1"
- Audio 2 group: "MV PIP 1", role: "Audio 2"

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

#### 3. Multiple groups

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

## NMOS Resource JSON Samples

Receivers with tags

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
   "id": "7a3c2f1e-9b4d-4e8a-a6f2-3c5d1e7b9a04",
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
   "id": "c4e8b2a6-1d3f-4a5c-8e7b-9f0a2d4c6e18",
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
