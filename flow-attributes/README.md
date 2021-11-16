# NMOS Flow Attributes

This Flow Attributes parameter register contains extensible attributes and their permitted values which may be used in Flow resources within the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

## Criteria

- Each entry MUST be associated with an existing defined [NMOS Format](../formats), and MAY additionally relate to a specific `media_type`.
- Each entry MUST define or refer to an existing unique attribute name within the scope of a Flow.
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Each entry MUST define all permitted values for the attribute, either via an explicit list, well-defined references or both.
- Entries MAY be used to expand the set of permitted values associated with an existing extensible attribute.
- Each entry MUST link to a schema definition held within this repository (unless covered by a schema within the original specification).
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

As noted in [IS-04 v1.3](https://specs.amwa.tv/is-04/v1.3/docs/4.3._Behaviour_-_Nodes.html#sources--flows), new Flow attributes may be defined here as opposed to requiring a new version of the specification.

Query APIs and their clients which support v1.3 of IS-04 or operate in a mixed-version environment MUST be tolerant to the presence of Flow attributes and values which may be added at a later date. This is further detailed in the [IS-04 Upgrade Path](https://specs.amwa.tv/is-04/v1.3/docs/6.0._Upgrade_Path.html) document.

## Attributes

### urn:x-nmos:format:video

**Note:** A JSON schema supporting validation of all the attributes defined in this register is available as **[flow_video_register.json](flow_video_register.json)**.
These MAY be used in addition to the schemas, such as **flow_video.json**, found in the AMWA IS-04 specification.

- **Name:** `bit_rate`
  - **Description:** Bit rate, in kilobits/second
  - **Specification:** Depends on the media type (for example, for `video/jxsv`, the value specifies the average bit rate of an RTP stream as per RFC 9134 including IP headers and payload as per SMPTE ST 2110-22)
  - **Applicability:** AMWA IS-04 coded video Flows since v1.3
  - **Permitted Values:**
    - Integer value expressed in units of 1000 bits per second, rounding up.

- **Name:** `colorspace`
  - **Description:** Colorspace used for the video.
  - **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1)
  - **Applicability:** AMWA IS-04 video Flows; schema values since v1.1 and referenced values since v1.3
  - **Schema Permitted Values:**
    - `BT601`
    - `BT709`
    - `BT2020`
    - `BT2100`
  - **Referenced Permitted Values:**
    - Entries defined for the colorimetry format-specific parameter in any published revision of SMPTE ST 2110-20.

- **Name:** `components`
  - **Description:** Object describing the components of the video.
  - **Specification:** Identical to the components attribute defined for raw video Flows in AMWA IS-04
  - **Applicability:** AMWA IS-04 coded video Flows since v1.3
  - **Permitted Values:**
    - Objects permitted by the JSON Schema, such as:
      ```json
      "components": [
        { "name": "Y",  "width": 1280, "height": 720, "bit_depth": 10 },
        { "name": "Cb", "width": 640,  "height": 720, "bit_depth": 10 },
        { "name": "Cr", "width": 640,  "height": 720, "bit_depth": 10 }
      ]
      ```

- **Name:** `transfer_characteristic`
  - **Description:** Transfer characteristic.
  - **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1)
  - **Applicability:** AMWA IS-04 video Flows; schema values since v1.1 and referenced values since v1.3
  - **Schema Permitted Values:**
    - `SDR`
    - `HLG`
    - `PQ`
  - **Referenced Permitted Values:**
    - Entries defined for the TCS format-specific parameter in any published revision of SMPTE ST 2110-20.
