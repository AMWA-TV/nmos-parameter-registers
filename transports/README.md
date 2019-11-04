# NMOS Transports

This Transports parameter register contains values that may be used to identify a transport protocol, used in the 'transport' property of the sender and receiver resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Values used for the 'transport' property are not required to be included in this parameter register.
- Each entry MUST define a unique transport name (which is a URN).
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification for the transport, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Manufacturers MAY use their own namespaces to indicate transports which are not currently defined within the NMOS namespace.

## Values

- **Name:** urn:x-nmos:transport:rtp
  - **Description:** Identifies the Real-time Transport Protocol.
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
  - **Applicability:** AMWA IS-04 v1.0+, IS-05 v1.0+
- **Name:** urn:x-nmos:transport:rtp.mcast
  - **Description:** Identifies RTP multicast.
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
  - **Applicability:** AMWA IS-04 v1.0+, IS-05 v1.0+
- **Name:** urn:x-nmos:transport:rtp.ucast
  - **Description:** Identifies RTP unicast.
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
  - **Applicability:** AMWA IS-04 v1.0+, IS-05 v1.0+
- **Name:** urn:x-nmos:transport:dash
  - **Description:** Identifies the Dynamic Adaptive Streaming over HTTP technology.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.1+, IS-05 v1.0+
- **Name:** urn:x-nmos:transport:mqtt
  - **Description:** Identifies Message Queuing Telemetry Transport (MQTT).
  - **Specification:** [AMWA IS-05 v1.1](https://github.com/AMWA-TV/nmos-device-connection-management/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.3+, IS-05 v1.1+, IS-07 v1.0+
- **Name:** urn:x-nmos:transport:websocket
  - **Description:** Identifies the WebSocket transport type.
  - **Specification:** [AMWA IS-05 v1.1](https://github.com/AMWA-TV/nmos-device-connection-management/tree/v1.1.x)
  - **Applicability:** AMWA IS-04 v1.3+, IS-05 v1.1+, IS-07 v1.0+

Note: An RTP Transmitter sending to a multicast group should use the transport 'urn:x-nmos:transport:rtp.mcast', but a receiver supporting both unicast and multicast should present the transport 'urn:x-nmos:transport:rtp' to indicate its less restrictive state.
