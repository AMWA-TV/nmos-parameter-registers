# NMOS Flow Attributes

This Flow Attributes parameter register contains extensible attributes and their permitted values which may be used in Flow resources within the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Each entry MUST be associated with an existing defined [NMOS Format](../formats), and MAY additionally relate to a specific `media_type`.
- Each entry MUST define or refer to an existing unique attribute name within the scope of a Flow.
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Each entry MUST define all permitted values for the attribute, either via an explicit list, well-defined references or both.
- Entries MAY be used to expand the set of permitted values associated with an existing extensible attribute.
- Each entry MUST link to a schema definition held within this repository (unless covered by a schema within the original specification).
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

As noted in [IS-04 v1.3](https://specs.amwa.tv/is-04/releases/v1.3/docs/4.3._Behaviour_-_Nodes.html#sources--flows), new Flow attributes may be defined here as opposed to requiring a new version of the specification.

Query APIs and their clients which support v1.3 of IS-04 or operate in a mixed-version environment MUST be tolerant to the presence of Flow attributes and values which may be added at a later date. This is further detailed in the [IS-04 Upgrade Path](https://specs.amwa.tv/is-04/releases/v1.3/docs/6.0._Upgrade_Path.html) document.

## Attributes

### urn:x-nmos:format:video

- **Name:** colorspace
  - **Description:** Colorspace used for the video.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** Schema values from AMWA IS-04 v1.1+, referenced values from AMWA IS-04 v1.3+
  - **Schema Permitted Values:**
    - `BT601`
    - `BT709`
    - `BT2020`
    - `BT2100`
  - **Referenced Permitted Values:**
    - Entries defined by the 'Colorimetry' parameter in any published revision of SMPTE ST.2110-20.

- **Name:** transfer_characteristic
  - **Description:** Transfer characteristic.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** Schema values from AMWA IS-04 v1.1+, referenced values from AMWA IS-04 v1.3+
  - **Schema Permitted Values:**
    - `SDR`
    - `HLG`
    - `PQ`
  - **Referenced Permitted Values:**
    - Entries defined by the 'TCS' parameter in any published revision of SMPTE ST.2110-20.
