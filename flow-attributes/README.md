# NMOS Flow Attributes
{:.no_toc}

This Flow Attributes parameter register contains extensible attributes and their permitted values which may be used in Flow resources within the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

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

Note: JSON schemas supporting validation of all the attributes defined in this register are available as **[flow_video_register.json](flow_video_register.json)** and **[flow_audio_register.json](flow_audio_register.json)**.
These MAY be used in addition to the schemas, such as _flow_video.json_ and _flow_audio.json_, found in the AMWA IS-04 specification.

### Bit Rate
- **Name:** `bit_rate`
- **Description:** Bit rate, in kilobits/second.
- **Specification:** Depends on the media type
- **Applicability:** `urn:x-nmos:format:video` or `urn:x-nmos:format:audio`
  -  For `video/jxsv`, the value specifies the average bit rate of an RTP stream as per RFC 9134 including IP headers and payload as per SMPTE ST 2110-22
- **Permitted Values:**
  - Since AMWA IS-04 v1.3
    - Integer value expressed in units of 1000 bits per second, rounding up.

### Colorspace
- **Name:** `colorspace`
- **Description:** Colorspace used for the video.
- **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1)
- **Applicability:** `urn:x-nmos:format:video`
- **Permitted Values:**
  - Since AMWA IS-04 v1.1, values complying with the IS-04 schema
    - `BT601`
    - `BT709`
    - `BT2020`
    - `BT2100`
  - Since AMWA IS-04 v1.3, values defined for the colorimetry format-specific parameter in any published revision of SMPTE ST 2110-20.
  - Since ST 2110-20:2017
    - `ST2065-1`
    - `ST2065-3`
    - `UNSPECIFIED` (when no other value applies)
    - `XYZ`
  - Since ST 2110-20:2021
    - `ALPHA`

### Components
- **Name:** `components`
- **Description:** Array of objects describing the components of the video.
- **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1) for raw video Flows, extended by this entry to coded video Flows since v1.3
- **Applicability:** `urn:x-nmos:format:video`
- **Permitted Values:**
  - For raw video Flows, since AMWA IS-04 v1.1, values complying with the IS-04 schema
  - For coded video Flows, since AMWA IS-04 v1.3, values complying with the schema accompanying this register
  - For example:  
    ```json
    "components": [
      { "name": "Y",  "width": 1280, "height": 720, "bit_depth": 10 },
      { "name": "Cb", "width": 640,  "height": 720, "bit_depth": 10 },
      { "name": "Cr", "width": 640,  "height": 720, "bit_depth": 10 }
    ]
    ```

### Transfer Characteristic
- **Name:** `transfer_characteristic`
- **Description:** Transfer characteristic.
- **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1)
- **Applicability:** `urn:x-nmos:format:video`
- **Permitted Values:**
  - Since AMWA IS-04 v1.1, values complying with the IS-04 schema
    - `SDR`
    - `HLG`
    - `PQ`
  - Since AMWA IS-04 v1.3, values defined for the TCS format-specific parameter in any published revision of SMPTE ST 2110-20.
  - Since ST 2110-20:2017
    - `LINEAR`
    - `BT2100LINPQ`
    - `BT2100LINHLG`
    - `ST2065-1`
    - `ST428-1`
    - `DENSITY`
    - `UNSPECIFIED` (when no other value applies)
  - Since ST 2110-20:2021
    - `ST2115LOGS3`
