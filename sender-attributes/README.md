# NMOS Sender Attributes
{:.no_toc}

This Sender Attributes parameter register contains extensible attributes and their permitted values which may be used in Sender resources within the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Each entry MUST be associated with an existing defined [NMOS Transport](../transports), and MAY additionally relate to a specific [Format](../formats) and/or `media_type`.
- Each entry MUST define or refer to an existing unique attribute name within the scope of a Sender.
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Each entry MUST define all permitted values for the attribute, either via an explicit list, well-defined references or both.
- Entries MAY be used to expand the set of permitted values associated with an existing extensible attribute.
- Each entry MUST link to a schema definition held within this repository (unless covered by a schema within the original specification).
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

As noted in [IS-04 v1.3](https://specs.amwa.tv/is-04/v1.3/docs/4.3._Behaviour_-_Nodes.html#sources--flows) **(Reference To Be Confirmed)**, new Sender attributes may be defined here as opposed to requiring a new version of the specification.

Query APIs and their clients which support v1.3 of IS-04 or operate in a mixed-version environment MUST be tolerant to the presence of Sender attributes and values which may be added at a later date. This is further detailed in the [IS-04 Upgrade Path](https://specs.amwa.tv/is-04/v1.3/docs/6.0._Upgrade_Path.html) document.

## Attributes

Note: JSON schemas supporting validation of all the attributes defined in this register are available as **[sender_register.json](sender_register.json)**.
These MAY be used in addition to the schema, _sender.json_, found in the AMWA IS-04 specification.

### ST 2110-21 Sender Type
- **Name:** `st2110_21_sender_type`
- **Description:** Identifies the traffic shaping and delivery timing requirements of ST 2110-21 to which the Sender complies.
- **Specification:** ST 2110-21
- **Applicability:** `urn:x-nmos:transport:rtp`
- **Permitted Values:**
  - Since AMWA IS-04 v1.3, values defined for the TP format-specific parameter in any published revision of SMPTE ST 2110-21
  - Since ST 2110-20:2017
    - `2110TPN`
    - `2110TPNL`
    - `2100TPW`
