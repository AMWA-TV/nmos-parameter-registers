# NMOS Flow Attributes

This Flow Attributes parameter register contains values that may be used to identify specific types of content which may be advertised via flow resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Each entry MUST be associated with an existing defined [NMOS Format](../formats) and a media_type.
- Each entry MUST define a unique attribute name within the scope of a Flow.
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Each entry MUST link to a schema definition held within this repository.
- Where linked schemas contain an 'enum' these MAY be expanded over time. Implementations MUST NOT strictly validate against the limited set of permitted values provided in these schemas.
- Schemas MUST NOT have required attributes removed following their inclusion in this register.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Query API clients from v1.3 of IS-04 onwards MUST be tolerant to the presence of Flow attributes not yet defined here which may be added in later API versions.

## Values

### Relating to urn:x-nmos:format:video

- **Name:** frame_width
  - **Description:** Width of the picture in pixels.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+
- **Name:** frame_height
  - **Description:** Height of the picture in pixels.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+
- **Name:** interlace_mode
  - **Description:** Interlace video mode for frames in this Flow.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+
- **Name:** colorspace
  - **Description:** Colorspace used for the video.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+
- **Name:** transfer_characteristic
  - **Description:** Transfer characteristic.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+

#### Relating to raw video, identified by 'video/raw'

- **Name:** components
  - **Description:** Array of objects describing the video components.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+

### Relating to urn:x-nmos:format:audio

- **Name:** sample_rate
  - **Description:** Number of audio samples per second for this Flow
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+
- **Name:** bit_depth
  - **Description:** Bit depth of the audio samples. Intended for use by raw audio Flows only
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+

### Relating to urn:x-nmos:format:data

#### Relating to SDI ancillary, identified by 'video/smpte291'

- **Name:** DID_SDID
  - **Description:** List of Data identification and Secondary data identification words.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+

#### Relating to JSON data, identified by 'application/json'

- **Name:** event_type
  - **Description:** Identifies a sub-classification of event data which is being produced, as required for AMWA IS-07
  - **Specification:** [AMWA IS-04 v1.3](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.3-dev)
  - **Applicability:** AMWA IS-04 v1.3+

### Relating to urn:x-nmos:format:mux

- No parameters currently defined
