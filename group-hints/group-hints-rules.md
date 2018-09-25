# Group hints tags

- **Name:**  urn:x-nmos:grouphint:group
  - **Description:** Group name tag that can be used in a JSON description for an NMOS resource.
  - **Proponent:**  [Grass Valley](https://github.com/AMWA-TV/nmos-parameter-registers) (contact [@sagrondin](https://github.com/sagrondin))

- **Name:**  urn:x-nmos:grouphint:role
  - **Description:** Role (inside a group) tag that can be used in a JSON description for an NMOS resource.
  - **Proponent:**  [Grass Valley](https://github.com/AMWA-TV/nmos-parameter-registers) (contact [@sagrondin](https://github.com/sagrondin))


This document describes a purely behavioural extension to AMWA IS-04 to help control systems identify relationships between NMOS resources contained inside the same NMOS node.

## Introduction

Since AMWA IS-04 v1.0, NMOS resources contain a “tags” field that has not been used in a standard way.  However when the control systems are trying to control multiple NMOS devices there is no defined way of representing related resources together.

The initial goal of the group hints definition is to have an easy way of identifying natural groups of sources and destinations.  This document defines a clear way of identifying natural groups in the NMOS registry but it does not limit usage of these tags to natural grouping.  The only requirement is to respect the rules for natural grouping.

Natural grouping can be defined as the default relationship between senders or receivers inside a node.  This relationship SHOULD remain the same inside a similar device (hardware or software) and it is mostly to help build relationship.  Natural groups are not created by users, they are defined by device manufacturers. 


## Group hint name

The group hint ‘group’ defines the name of the group to which a resource belongs to.

```json
"tags": {
   "urn:x-nmos:grouphint:group": [
      "{name}"
   ]
}
```


- Group names and roles exist only at the node boundary.  No relationship can be identify between nodes using these tags.
- If the group hint ‘group’ tag is missing, no assumption MUST be made on relationships.
- If the group hint ‘group’ tag is present but contains an empty string, no assumption MUST be made on relationships.
- If a group hint ‘group’ tag is present inside a resource within the same “NMOS node” which have matching values of this tag MUST be considered as related members of a group by a controlling entity.
- If multiple group tags are present in the same sender resource, resource can be considered part of multiple groups if this applies
- A resource may contain multiple group hints but special rules apply to senders and receiver for natural grouping.

## Natural groups

Natural groups applies only to NMOS senders and receivers

-	If multiple group tags are present in the same receiver resource, only the first tag found in the JSON string will be considered as valid.
-	If “urn:x-nmos:grouphint:group” tag array of string contains more than one string, only the first string is considered as valid.
-	Senders and Receivers may both contain matching values of the “urn:x-nmos:x-nmos:grouphint:group” tag, indicating that the group has elements in both signal flow directions.

### Group hint role

How to tell that your resource inside a group has a defined role?  To do so use the role hint.

```json
"tags": {
   "urn:x-nmos:grouphint:role": [
      "{role}"
   ]
}
```

- Associate a name (string) to this tag.
- Resources within the same group can use this role to differentiate themselves.
- Can be use to index a sender or a receiver inside a group (like audio 1, audio 2).
- Not mandatory but highly recommended.

### Examples

Playout server sender with 1 video 2 audio
- Video 1 group : “Playout Master”
- Video 1 role: “Primary”
- Audio 1 group : “Playout Master”
- Audio 1 role: “Audio 1 –2ch”
- Audio 2 group : “Playout Master”
- Audio 2 role: “Audio 2 –5.1ch”

MultiviewerPIP, receiver with 1 video 4 audio
- Video 1 group : “MV PIP 1”
- Video 1 role: “Video”
- Audio 1 group : “MV PIP 1”
- Audio 1 role: “Audio 1”
- Audio 2 group : “MV PIP 1”
- Audio 2 role: “Audio 2”
- Audio 3 group : “MV PIP 1”
- Audio 3 role: “Audio 3”
- Audio 4group : “MV PIP 1”
- Audio 4 role: “Audio 4”


## JSON samples

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
"label": "GV[SMPTEKIP] Video 1",
"description": "(SMPTEKIP@10.37.65.20) kaleido-ip node receiver 1 ID VIDEO index:1",
"tags": {
    "urn:x-nmos:grouphint:group": [
            "IP input 1"
     ],
    "urn:x-nmos:grouphint:role": [
            "Main"
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
"label": "GV[SMPTEKIP] Audio 1",
"description": "(SMPTEKIP@10.37.65.20) kaleido-ip node receiver 1 ID AUDIO index:1",
"tags": {
    "urn:x-nmos:grouphint:group": [
            "IP input 1"
     ],
    "urn:x-nmos:grouphint:role": [
            "Audio English"
     ]
}
}
```
