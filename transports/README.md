# NMOS Transports

This Transports parameter register contains values that may be used to identify a transport protocol, used in the 'transport' property of the sender and receiver resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Values used for the 'transport' property are not required to be included in this parameter register.
- Each entry MUST define a unique transport name (which is a URN).
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification for the transport, as well as identifying the AMWA IS-04 API Versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Manufacturers MAY use their own namespaces to indicate transports which are not defined within the NMOS namespace at a particular API version, but should support be added in a future version the NMOS variant MUST be used when upgrading to that API version.

## Values

- **Name:** urn:x-nmos:transport:rtp
  - **Description:** Identifies the Real-time Transport Protocol.
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
- **Name:** urn:x-nmos:transport:rtp.mcast
  - **Description:** Identifies RTP multicast.
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
- **Name:** urn:x-nmos:transport:rtp.ucast
  - **Description:** Identifies RTP unicast.
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
- **Name:** urn:x-nmos:transport:dash
  - **Description:** Identifies the Dynamic Adaptive Streaming over HTTP technology.
  - **Specification:** [AMWA IS-04 v1.1](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.1.x)
- **Name:** urn:x-nmos:transport:mqtt
  - **Description:** Identifies Message Queueing Telemetry Transport (MQTT).
  - **Specification:** [AMWA IS-05 v1.1](https://github.com/AMWA-TV/nmos-device-connection-management/tree/v1.1-dev)
- **Name:** urn:x-nmos:transport:websocket
  - **Description:** Identifies the WebSocket transport type.
  - **Specification:** [AMWA IS-05 v1.1](https://github.com/AMWA-TV/nmos-device-connection-management/tree/v1.1-dev)

Note: An RTP Transmitter sending to a multicast group should use the transport 'urn:x-nmos:transport:rtp.mcast', but a receiver supporting both unicast and multicast should present the transport 'urn:x-nmos:transport:rtp' to indicate its less restrictive state.
