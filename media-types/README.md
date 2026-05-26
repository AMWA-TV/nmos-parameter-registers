# NMOS Media Types
{:.no_toc}

This Media Types parameter register contains values that may be used to identify the media type, used in the `media_type` property of the flow resource or the `media_types` property of the receiver resource defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Relationship to AMWA IS-04

AMWA IS-04 defines `media_type` values in its Flow and Receiver JSON Schemas. These include [IANA-registered](https://www.iana.org/assignments/media-types/media-types.xhtml) media types used for RTP transport, such as `video/raw`, `video/jxsv`, and `audio/L24`, as specified by the relevant RTP payload format documents and the SMPTE ST 2110 suite.

This parameter register is **supplementary** to those IS-04 definitions. It lists only **additional** media types that are valid for use in NMOS but are not enumerated in the IS-04 schemas, for example, media types used with MXL as specified in [AMWA BCP-007-03](https://specs.amwa.tv/bcp-007-03).

When validating or constraining `media_type`, implementers MUST consult the applicable IS-04 schemas (such as `flow_video_raw.json` and `flow_video_coded.json`) in addition to the entries in this register.

## Criteria

- Each entry defines a unique media type name.
- Each entry has a short description.
- Each entry lists applicable specifications.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

## Values

Note: A JSON schema supporting validation of the media types defined in **this register** is available as **[media_type_register.json](media_type_register.json)**.
It does not enumerate IANA or other media types already defined in IS-04. The schema MAY be used in addition to the Flow and Receiver schemas found in the AMWA IS-04 specification.

### Video v210
- **Name:** `video/v210`
- **Description:** Identifies an uncompressed buffer carrying 10 bit 4:2:2 video without transparency
- **Applicability:** AMWA IS-04 since v1.3, AMWA BCP-007-03 since v1.0

### Video v210a
- **Name:** `video/v210a`
- **Description:** Identifies an uncompressed buffer carrying 10 bit 4:2:2 video with transparency (key and fill signals)
- **Applicability:** AMWA IS-04 since v1.3, AMWA BCP-007-03 since v1.0

### Audio float32
- **Name:** `audio/float32`
- **Description:** Identifies audio stored as 32 bit float values with a full-scale range of −1.0 to +1.0
- **Applicability:** AMWA IS-04 since v1.3, AMWA BCP-007-03 since v1.0

### Ancillary data
- **Name:** `video/smpte291`
- **Description:** Identifies an ancillary data payload based on [RFC 8331](https://datatracker.ietf.org/doc/html/rfc8331)
- **Applicability:** AMWA IS-04 since v1.0, AMWA BCP-007-03 since v1.0
