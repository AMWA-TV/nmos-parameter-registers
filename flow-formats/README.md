# NMOS Flow Formats

This Flow Formats parameter repository contains values that may be used to identify a flow 'format' in the property of the flow resource defined in the [AMWA NMOS Discovery and Registration Specification (IS-04)](https://github.com/AMWA-TV/nmos-discovery-registration).

## Guidance

- Values used for the flow 'format' property are defined only by revisions of IS-04 itself.
- Each entry MUST define a unique flow format name (URN).
- Each entry MUST have a short description.
- Each entry MUST identify the IS-04 API Version from which it is valid.

Query API clients MUST be tolerant to the presence of formats not yet defined here which may be added in later API versions.


## Values

- **Name:** urn:x-nmos:format:video
  - **Description:** Identifies video flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:format:audio
  - **Description:** Identifies audio flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:format:data
  - **Description:** Identifies data flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:format:mux
  - **Description:** Identifies multiplexed flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.1
