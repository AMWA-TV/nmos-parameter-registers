# NMOS Flow Attributes

This Flow Attributes parameter register contains extended attributes and their permitted values which may be used in Flow resources within the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Each entry MUST be associated with an existing defined [NMOS Format](../formats), and MAY additionally relate to a specific `media_type`.
- Each entry MUST define a unique attribute name within the scope of a Flow.
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Each entry MUST define all permitted values for the attribute, either via an explicit list, well-defined references or both.
- Entries MAY be used to expand the set of permitted values associated with an existing attribute.
- Each entry MUST link to a schema definition held within this repository (unless covered by a schema within the original specification).
- Schemas MUST NOT have 'required' attributes removed following their inclusion in this register.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Query API clients from v1.3 of IS-04 onwards MUST be tolerant to the presence of Flow attributes and values not yet defined here which may be added at a later date.

## Values

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
