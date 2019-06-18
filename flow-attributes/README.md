# NMOS Flow Attributes

This Flow Attributes parameter register contains values that may be used to identify specific types of content which may be advertised via flow resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Each entry MUST be associated with an existing defined [NMOS Format](../formats) and a media\_type.
- Each entry MUST define a unique attribute name within the scope of a Flow.
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Each entry MUST link to a schema definition held within this repository.
- Where linked schemas contain an 'enum' these MAY be expanded over time. Implementations MUST NOT strictly validate against the limited set of permitted values provided in these schemas.
- Schemas MUST NOT have required attributes removed following their inclusion in this register.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Query API clients from v1.3 of IS-04 onwards MUST be tolerant to the presence of Flow attributes not yet defined here which may be added in later API versions.

Clients should be aware that requesting data about a very broad 'media\_type' may return more results than are expected. For example, a media\_type of 'application/json' is likely to be used by more than just IS-07 Flows. In this specific example case, use of the 'event_type' attribute can aid in differentiation.

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

## Common Examples

The following examples are noted to highlight the breadth of content which may be represented using these attributes.

### Video

**Raw Video** (including ST.2110-20 and RFC4175 when sent as RTP)
* format: urn:x-nmos:format:video
* media\_type: video/raw

**Coded Video** (including ST.2110-22 when sent as RTP)
* format: urn:x-nmos:format:video
* media\_type: Various, including video/H264 and video/vc2

**MPEG 4 Transport Streams** (containing video only)
* format: urn:x-nmos:format:video
* media\_type: video/mpeg4-generic

### Audio

**Raw Audio** (including ST.2110-30 and AES67 when sent as RTP)
* format: urn:x-nmos:format:audio
* media\_type: Various, including audio/L24

**Coded Audio**
* format: urn:x-nmos:format:audio
* media\_type: Various, including audio/opus

**AES3 Encapsulated Audio** (including ST.2110-31 when sent as RTP)
* format: urn:x-nmos:format:audio
* media\_type: audio/AM824

**MPEG 4 Transport Streams** (containing audio only)
* format: urn:x-nmos:format:audio
* media\_type: audio/mpeg4-generic

### Data

**ST.291 Ancillary Data**
* format: urn:x-nmos:format:data
* media\_type: video/smpte291

**JSON Data**
* format: urn:x-nmos:format:data
* media\_type: application/json

**MPEG 4 Transport Streams** (containing data only)
* format: urn:x-nmos:format:data
* media\_type: application/mpeg4-generic

### Mux

**MPEG 2 Transport Streams** (containing mixed formats)
* format: urn:x-nmos:format:mux
* media\_type: video/MP2T

**MPEG 4 Transport Streams** (containing mixed formats)
* format: urn:x-nmos:format:mux
* media\_type: video/mpeg4-generic

**SMPTE 2022-6**
* format: urn:x-nmos:format:mux
* media\_type: video/SMPTE2022-6
