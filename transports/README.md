# NMOS Transports

This Transports parameter repository contains values that may be used to identify a transport protocol, used in the 'transport' property of the sender and receiver resources defined in the [AMWA NMOS Discovery and Registration Specification (IS-04)](https://github.com/AMWA-TV/nmos-discovery-registration).

## Guidance

- Values used for the 'transport' property are not required to be included in this repository.
- Each entry MUST define a unique transport name (which is a URN).
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification for the transport, as well as identifying the IS-04 API Versions for which the entry is applicable.
- Additions and updates to this parameter repository may be submitted via a GitHub Pull Request (PR).

Manufacturers MAY use their own namespaces to indicate transports which are not defined within the NMOS namespace at a particular API version, but should support be added in a future version the NMOS variant MUST be used when upgrading to that API version.

## Values

- **Name:** urn:x-nmos:transport:rtp
  - **Description:** Identifies the Real-time Transport Protocol.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:transport:rtp.mcast
  - **Description:** Identifies RTP multicast.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:transport:rtp.ucast
  - **Description:** Identifies RTP unicast.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:transport:dash
  - **Description:** Identifies the Dynamic Adaptive Streaming over HTTP technology.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.1

Note: An RTP Transmitter sending to a multicast group should use the transport 'urn:x-nmos:transport:rtp.mcast', but a receiver supporting both unicast and multicast should present the transport 'urn:x-nmos:transport:rtp' to indicate its less restrictive state.
