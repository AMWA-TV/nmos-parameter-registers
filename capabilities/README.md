# NMOS Capabilities
{:.no_toc}

This Capabilities parameter register contains values that may be used to identify a capability, used in the `caps` property of the resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04/).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Capabilities used in the IS-04 `caps` properties are strongly RECOMMENDED to be included in this parameter register.
- Each entry MUST define a unique capability name (which is a string, with words separated by underscores, or a URN).
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

Query API clients MUST be tolerant to the presence of capabilities not yet defined here which may be added in later API versions.

Manufacturers MAY use their own namespaces to indicate capabilities which are not currently defined within the NMOS namespace (`urn:x-nmos:cap:`). In order to avoid collisions with simple names allocated by AMWA specifications, they MUST NOT use capability names that do not start with `urn:`.

Note: AMWA IS-04 specifies general requirements for the construction and [use of URNs](https://specs.amwa.tv/is-04/releases/v1.3.1/docs/2.1._APIs_-_Common_Keys.html#use-of-urns) in NMOS specifications.

Capabilities are most used by IS-04 Receivers to indicate what they may consume, but may be used by other `caps` objects in the future, potentially to indicate what they may be re-configured to generate.

## Values

### Media Types
- **Name:** `media_types`
- **Description:** Identifies Flows which may be created or consumed based upon their `media_type` attribute.
- **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1.x/)
- **Applicability:** AMWA IS-04 since v1.1

### Event Types
- **Name:** `event_types`
- **Description:** Identifies Sources or Flows which may be created or consumed based upon their `event_type` attribute.
- **Specification:** [AMWA IS-04 v1.3](hhttps://specs.amwa.tv/is-04/v1.3.x/)
- **Applicability:** AMWA IS-04 since v1.3

### Constraint Sets
- **Name:** `constraint_sets`
- **Description:** Identifies streams from Senders which may be created or consumed based upon the attributes of the associated Source or Flow or contents of the associated transport file.
- **Specification:** [AMWA BCP-004-01](https://specs.amwa.tv/bcp-004-01/v1.0.x/)
- **Applicability:** AMWA IS-04

### Version
- **Name:** `version`
- **Description:** String formatted TAI timestamp (`<seconds>:<nanoseconds>`) indicating when an attribute of the `caps` object last changed.
- **Specification:** [AMWA BCP-004-01](https://specs.amwa.tv/bcp-004-01/v1.0.x/)
- **Applicability:** AMWA IS-04

## Constraint Set

Note: A JSON schema for a Constraint Set, supporting validation of all the Constraint Set Metadata and Parameter Constraints defined in this register, is available as **[constraint_set.json](constraint_set.json)**.
It MAY be used in place of the file with the same name in the AMWA BCP-004-01 specification.

## Constraint Set Metadata

### Label
- **Name:** `urn:x-nmos:cap:meta:label`
- **Description:** Freeform string label to provide a human-readable name for a Constraint Set.
- **Specification:** [AMWA BCP-004-01](https://specs.amwa.tv/bcp-004-01/v1.0.x/)
- **Applicability:** AMWA IS-04

### Preference
- **Name:** `urn:x-nmos:cap:meta:preference`
- **Description:** Expresses the relative 'weight' that the Receiver assigns to its preference for the streams satisfied by the associated Constraint Set.
- **Specification:** [AMWA BCP-004-01](https://specs.amwa.tv/bcp-004-01/v1.0.x/)
- **Applicability:** AMWA IS-04

### Enabled
- **Name:** `urn:x-nmos:cap:meta:enabled`
- **Description:** Indicates whether a Constraint Set is available to use immediately (true) or whether this is an offline capability which can be activated via some unspecified configuration mechanism (false).
- **Specification:** [AMWA BCP-004-01](https://specs.amwa.tv/bcp-004-01/v1.0.x/)
- **Applicability:** AMWA IS-04

## Parameter Constraints

### Media Type
- **Name:** `urn:x-nmos:cap:format:media_type`
- **Description:** Identifies streams which may be created or consumed based upon their IANA media type.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string
  - **Target:** (a) Flow `media_type` attribute, (b) SDP media description `m=` `<media>` and associated attribute `a=rtpmap:` `<encoding name>`
- **Applicability:** AMWA IS-04

### Grain Rate
- **Name:** `urn:x-nmos:cap:format:grain_rate`
- **Description:** Identifies streams which may be created or consumed based upon their grain rate.
- **Specification:** per AMWA BCP-004-01
  - **Type:** rational
  - **Target:** (a) Flow `grain_rate` (or from Source if omitted), (b) SDP attribute `a=fmtp:` format-specific parameter `exactframerate`
- **Applicability:** AMWA IS-04

### Frame Width
- **Name:** `urn:x-nmos:cap:format:frame_width`
- **Description:** Identifies the acceptable width in pixels of the picture in a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** integer
  - **Target:** (a) video Flow `frame_width`, (b) SDP attribute `a=fmtp:` format-specific parameter `width`
- **Applicability:** AMWA IS-04

### Frame Height
- **Name:** `urn:x-nmos:cap:format:frame_height`
- **Description:** Identifies the acceptable height in pixels of the picture in a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** integer
  - **Target:** (a) video Flow `frame_height`, (b) SDP attribute `a=fmtp:` format-specific parameter `height`
- **Applicability:** AMWA IS-04

### Interlace Mode
- **Name:** `urn:x-nmos:cap:format:interlace_mode`
- **Description:** Identifies the acceptable interlace mode of a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (enumerated values as per AMWA IS-04)
  - **Target:** (a) video Flow `interlace_mode`, (b) SDP attribute `a=fmtp:` format-specific parameters `interlace` and `segmented`
- **Applicability:** AMWA IS-04

### Colorspace
- **Name:** `urn:x-nmos:cap:format:colorspace`
- **Description:** Identifies the acceptable colorspace of a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (enumerated values as per AMWA IS-04 and the [Flow Attributes](../flow-attributes/) register)
  - **Target:** (a) video Flow `colorspace`, (b) SDP attribute `a=fmtp:` format-specific parameter `colorimetry`
- **Applicability:** AMWA IS-04

### Transfer Characteristic
- **Name:** `urn:x-nmos:cap:format:transfer_characteristic`
- **Description:** Identifies the acceptable transfer characteristic system of a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (enumerated values as per AMWA IS-04 and the [Flow Attributes](../flow-attributes/) register)
  - **Target:** (a) video Flow `transfer_characteristic`, (b) SDP attribute `a=fmtp:` format-specific parameter `TCS`
- **Applicability:** AMWA IS-04

### Color Sampling
- **Name:** `urn:x-nmos:cap:format:color_sampling`
- **Description:** Identifies the acceptable color (sub-)sampling mode of a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (enumerated values as per ST 2110-20 and the IANA [Media Type Sub-Parameter Registry for video/raw: Color (sub-)sampling][color-sampling])
  - **Target:** (a) SDP attribute `a=fmtp:` format-specific parameter `sampling`, (b) video Flow `components`
- **Applicability:** AMWA IS-04

### Component Depth
- **Name:** `urn:x-nmos:cap:format:component_depth`
- **Description:** Identifies the acceptable number of bits per component sample of a video stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** integer
  - **Target:** (a) SDP attribute `a=fmtp:` format-specific parameter `depth`, (b) video Flow `components.bit_depth`
- **Applicability:** AMWA IS-04

### Bit Rate
- **Name:** `urn:x-nmos:cap:format:bit_rate`
- **Description:** Identifies the acceptable bit rate of a compressed video or audio stream, in kilobits/second.
- **Specification:** per AMWA BCP-004-01
  - **Type:** integer
  - **Target:** (a) coded video or audio Flow `bit_rate` (defined in the [Flow Attributes](../flow-attributes/) register), (b) depending on the media type, SDP application-specific bandwidth `b=AS:`, for example as per ST 2110-22
- **Applicability:** AMWA IS-04

### Profile
- **Name:** `profile`
- **Description:** Identifies the acceptable profiles, as defined for the specific media type.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (values depending on the media type)
  - **Target:** (a) video Flow `profile` (defined in the [Flow Attributes](../flow-attributes/#profile) register), (b) depending on the media type, an SDP attribute `a=fmtp:` format-specific parameter, e.g. `profile`
- **Applicability:** AMWA IS-04

### Level
- **Name:** `level`
- **Description:** Identifies the acceptable levels, as defined for the specific media type.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (values depending on the media type)
  - **Target:** (a) video Flow `level` (defined in the [Flow Attributes](../flow-attributes/#level) register), (b) depending on the media type, an SDP attribute `a=fmtp:` format-specific parameter, e.g. `level`
- **Applicability:** AMWA IS-04

### Sublevel Bits Per Pixel
- **Name:** `sublevel_bpp`
- **Description:** Identifies the acceptable range for the JPEG XS sublevel or compression ratio expressed as bits per pixel (BPP).
- **Specification:** per AMWA BCP-004-01
  - **Type:** number
  - **Target:** (a) coded video Flow `sublevel_bpp` (defined in the [Flow Attributes](../flow-attributes/#sublevel-bits-per-pixel) register)
- **Applicability:** AMWA IS-04

### Channel Count
- **Name:** `urn:x-nmos:cap:format:channel_count`
- **Description:** Identifies the acceptable number of channels of an audio stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** integer
  - **Target:** (a) audio Source `channels`, (b) SDP attribute `a=rtpmap:` `<encoding parameters>`
- **Applicability:** AMWA IS-04

### Sample Rate
- **Name:** `urn:x-nmos:cap:format:sample_rate`
- **Description:** Identifies the acceptable number of samples per second in an audio stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** rational
  - **Target:** (a) audio Flow `sample_rate`, (b) SDP attribute `a=rtpmap:` `<clock rate>`
- **Applicability:** AMWA IS-04

### Sample Depth
- **Name:** `urn:x-nmos:cap:format:sample_depth`
- **Description:** Identifies the acceptable number of bits per sample of an audio stream.
- **Specification:** per AMWA BCP-004-01
  - **Type:** integer
  - **Target:** raw audio Flow `bit_depth`
- **Applicability:** AMWA IS-04

### Event Type
- **Name:** `urn:x-nmos:cap:format:event_type`
- **Description:** Identifies acceptable data streams based upon their event type.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (values as per AMWA IS-07 [Event types capability management](https://specs.amwa.tv/is-07/releases/v1.0.1/docs/3.0._Event_types.html#event-types-capability-management))
  - **Target:** data Flow `event_type`
- **Applicability:** AMWA IS-04

### Packet Time
- **Name:** `urn:x-nmos:cap:transport:packet_time`
- **Description:** Identifies the acceptable length of time in milliseconds represented by the media in a packet.
- **Specification:** per AMWA BCP-004-01
  - **Type:** number (as per [RFC 4566][RFC-4566])
  - **Target:** SDP attribute `a=ptime:` `<packet time>`
- **Applicability:** AMWA IS-04

### Max Packet Time
- **Name:** `urn:x-nmos:cap:transport:max_packet_time`
- **Description:** Identifies the acceptable maximum amount of media that can be encapsulated in each packet, expressed as time in milliseconds.
- **Specification:** per AMWA BCP-004-01
  - **Type:** number (as per [RFC 4566][RFC-4566])
  - **Target:** SDP attribute `a=maxptime:` `<maximum packet time>`
- **Applicability:** AMWA IS-04

### ST 2110-21 Sender Type
- **Name:** `urn:x-nmos:cap:transport:st2110_21_sender_type`
- **Description:** Identifies the ST 2110-21 receiver capabilities, expressed as the acceptable sender type or types.
- **Specification:** per AMWA BCP-004-01
  - **Type:** string (enumerated values as per ST 2110-21, such as `2110TPNL` for narrow linear senders)
  - **Target:** SDP attribute `a=fmtp:` format-specific parameter `TP`
  - **Applicability:** AMWA IS-04

[RFC-4566]: https://tools.ietf.org/html/rfc4566 "SDP: Session Description Protocol"
[color-sampling]: https://www.iana.org/assignments/media-type-sub-parameters/media-type-sub-parameters.xhtml#media-type-sub-parameters-15 "Media Type Sub-Parameter Registry for video/raw: Color (sub-)sampling"
