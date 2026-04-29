# NMOS Media Types
{:.no_toc}

This Media Types parameter register contains values that may be used to identify the media type, used in the `media_type` property of the flow resource or the `media_types` property of the receiver resource defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Each entry defines a unique media type name.
- Each entry has a short description.
- Each entry lists applicable specifications
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

## Values

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
