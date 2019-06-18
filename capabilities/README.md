# NMOS Capabilities

This Capabilities parameter register contains values that may be used to identify a capability, used in the 'caps' property of the resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Each entry MUST define a unique format name (which is a string, with words separated by underscores).
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
