# NMOS Formats

This Formats parameter repository contains values that may be used to identify a data format, used in the 'format' property of the source and flow resources defined in the [AMWA NMOS Discovery and Registration Specification (IS-04)](https://github.com/AMWA-TV/nmos-discovery-registration).

## Guidance

- Values used for the 'format' property are defined only by revisions of IS-04 itself.
- Each entry MUST define a unique format name (which is a URN).
- Each entry MUST have a short description.
- Each entry MUST identify the IS-04 API Version from which it is valid.

Query API clients MUST be tolerant to the presence of formats not yet defined here which may be added in later API versions.

## Values

- **Name:** urn:x-nmos:format:video
  - **Description:** Identifies (sources of) video flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:format:audio
  - **Description:** Identifies (sources of) audio flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:format:data
  - **Description:** Identifies (sources of) data flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:format:mux
  - **Description:** Identifies (sources of) multiplexed flows.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.1
