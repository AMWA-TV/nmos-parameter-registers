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

As noted in [IS-04 v1.3](https://specs.amwa.tv/is-04/releases/v1.3.2/docs/Behaviour_-_Nodes.html#all-resources), new Sender attributes may be defined here as opposed to requiring a new version of the specification.

Query APIs and their clients which support v1.3 of IS-04 or operate in a mixed-version environment MUST be tolerant to the presence of Sender attributes and values which may be added at a later date. This is further detailed in the [IS-04 Upgrade Path](https://specs.amwa.tv/is-04/v1.3.1/docs/6.0._Upgrade_Path.html) document.

## Attributes

Note: JSON schemas supporting validation of all the attributes defined in this register are available as **[sender_register.json](sender_register.json)**.
These MAY be used in addition to the schema, _sender.json_, found in the AMWA IS-04 specification.

### Bit Rate
- **Name:** `bit_rate`
- **Description:** Bit rate, in kilobits/second, including the transport overhead.
- **Specifications:** [AMWA BCP-006-01](https://specs.amwa.tv/bcp-006-01/), [AMWA BCP-006-04](https://specs.amwa.tv/bcp-006-04/)
- **Applicability:** `urn:x-nmos:transport:rtp`
- **Permitted Values:**
  - Since AMWA IS-04 v1.3, integer values expressed in units of 1000 bits per second, rounding up
  - The value is for the IP packets, including the RTP, UDP and IP packet headers and the payload

### Packet Transmission Mode
- **Name:** `packet_transmission_mode`
- **Description:** Identifies the JPEG XS packetization and transmission mode.
- **Specification:** [AMWA BCP-006-01](https://specs.amwa.tv/bcp-006-01/v1.0)
- **Applicability:** `urn:x-nmos:transport:rtp`
- **Permitted Values:**
  - Since AMWA IS-04 v1.3, string values representing the valid combinations of the [RFC 9134][RFC-9134] transmission mode (T) bit and packetization mode (K) bit, as enumerated in the schema accompanying this register
    - `codestream` (T=1, K=0)
    - `slice_sequential` (T=1, K=1)
    - `slice_out_of_order` (T=0, K=1)
  - When the attribute is omitted, a JPEG XS Sender is assumed to be using the `codestream` packetization mode

### ST 2110-21 Sender Type
- **Name:** `st2110_21_sender_type`
- **Description:** Identifies the traffic shaping and delivery timing requirements of ST 2110-21 to which the Sender complies.
- **Specification:** [AMWA BCP-006-01](https://specs.amwa.tv/bcp-006-01/v1.0)
- **Applicability:** `urn:x-nmos:transport:rtp`
- **Permitted Values:**
  - Since AMWA IS-04 v1.3, values defined for the TP format-specific parameter in any published revision of SMPTE ST 2110-21
  - Since ST 2110-20:2017
    - `2110TPN`
    - `2110TPNL`
    - `2110TPW`

[RFC-9134]: https://tools.ietf.org/html/rfc9134 "RTP Payload Format for ISO/IEC 21122 (JPEG XS)"
