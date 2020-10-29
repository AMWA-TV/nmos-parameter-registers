# NMOS Capabilities

This Capabilities parameter register contains values that may be used to identify a capability, used in the 'caps' property of the resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Each entry MUST define a unique capability name (which is a string, with words separated by underscores, or a URN).
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Query API clients MUST be tolerant to the presence of capabilities not yet defined here which may be added in later API versions.

Capabilities are most used by IS-04 Receivers to indicate what they may consume, but may be used by other 'caps' objects in the future, potentially to indicate what they may be re-configured to generate.

## Values

- **Name:** media_types
  - **Description:** Identifies Flows which may be created or consumed based upon their 'media_type' attribute.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+
- **Name:** event_types
  - **Description:** Identifies Sources or Flows which may be created or consumed based upon their 'event_type' attribute.
  - **Specification:** [AMWA IS-04 v1.3](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.3-dev)
  - **Applicability:** AMWA IS-04 v1.3+
- **Name:** constraint_sets
  - **Description:** Identifies streams from Senders which may be created or consumed based upon the attributes of the associated Source or Flow or contents of the associated transport file.
  - **Specification:** [AMWA BCP-xxx-01 (Work In Progress)](https://github.com/AMWA-TV/nmos-receiver-capabilities/tree/v1.0-dev)
  - **Applicability:** AMWA IS-04

### Constraint Set Metadata

- **Name:** urn:x-nmos:cap:meta:label
  - **Description:** Freeform string label to provide a human-readable name for a Constraint Set.
  - **Specification:** [AMWA BCP-xxx-01 (Work In Progress)](https://github.com/AMWA-TV/nmos-receiver-capabilities/tree/v1.0-dev)
  - **Applicability:** AMWA BCP-xxx-01
- **Name:** urn:x-nmos:cap:meta:preference
  - **Description:** Expresses the relative 'weight' that the Receiver assigns to its preference for the streams satisfied by the associated Constraint Set.
  - **Specification:** [AMWA BCP-xxx-01 (Work In Progress)](https://github.com/AMWA-TV/nmos-receiver-capabilities/tree/v1.0-dev)
  - **Applicability:** AMWA BCP-xxx-01

### Parameter Constraints

- **Name:** urn:x-nmos:cap:format:media_type
  - **Description:** Identifies streams which may be created or consumed based upon their IANA media type.
  - **Specification:**
    - **Type:** string
    - **Target:** (a) Flow 'media_type' attribute, (b) SDP media description 'm=' <media> and associated attribute 'a=rtpmap:' <encoding name>
  - **Applicability:** AMWA IS-04, AMWA BCP-xxx-01
- **Name:** urn:x-nmos:cap:format:grain_rate
  - **Description:** Identifies streams which may be created or consumed based upon their grain rate.
  - **Specification:**
    - **Type:** rational
    - **Target:** (a) Flow 'grain_rate' (or from Source if omitted), (b) SDP attribute 'a=fmtp:' format-specific parameter 'exactframerate'
  - **Applicability:** AMWA IS-04, AMWA BCP-xxx-01
