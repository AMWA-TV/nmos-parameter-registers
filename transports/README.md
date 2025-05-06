# NMOS Transports
{:.no_toc}

This Transports parameter register contains values that identify a transport protocol, used in the `transport` property of the sender and receiver resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04) and as used in [AMWA IS-05 NMOS Device Connection Management Specification](https://specs.amwa.tv/is-05).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Each entry MUST define a unique transport name (which is a URN).
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification for the transport, a link to the associated schemas for the transport, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

Manufacturers MAY use their own namespaces to indicate transports which are not currently defined within the NMOS namespace. Transports not part of the NMOS namespace are not included in this register.

Note: AMWA IS-04 specifies general requirements for the construction and [use of URNs](https://specs.amwa.tv/is-04/releases/v1.3.1/docs/2.1._APIs_-_Common_Keys.html#use-of-urns) in NMOS specifications.

## Values

### RTP
- **Name:** `urn:x-nmos:transport:rtp`
- **Description:** Identifies the Real-time Transport Protocol.
- **Specification:** [AMWA IS-05](https://specs.amwa.tv/is-05/)
- **Schemas:** [AMWA IS-05 (schemas)](https://specs.amwa.tv/is-05/latest/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.0, IS-05 since v1.0

Note: An RTP Transmitter sending to a multicast group should use the transport `urn:x-nmos:transport:rtp.mcast`, but a receiver supporting both unicast and multicast should present the transport `urn:x-nmos:transport:rtp` to indicate its less restrictive state.

#### RTP Multicast
- **Name:** `urn:x-nmos:transport:rtp.mcast`
- **Description:** Identifies RTP multicast.
- **Specification:** [AMWA IS-05](https://specs.amwa.tv/is-05/)
- **Schemas:** [AMWA IS-05 (schemas)](https://specs.amwa.tv/is-05/latest/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.0, IS-05 since v1.0

Note: The IS-05 v1.1 `/transporttype` endpoint returns the URN base; the subclassification is removed.

#### RTP Unicast
- **Name:** `urn:x-nmos:transport:rtp.ucast`
- **Description:** Identifies RTP unicast.
- **Specification:** [AMWA IS-05](https://specs.amwa.tv/is-05/)
- **Schemas:** [AMWA IS-05 (schemas)](https://specs.amwa.tv/is-05/latest/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.0, IS-05 since v1.0

Note: The IS-05 v1.1 `/transporttype` endpoint returns the URN base; the subclassification is removed.

### DASH
- **Name:** `urn:x-nmos:transport:dash`
- **Description:** Identifies the Dynamic Adaptive Streaming over HTTP technology.
- **Specification:** [AMWA IS-05](https://specs.amwa.tv/is-05/)
- **Schemas:** [AMWA IS-05 (schemas)](https://specs.amwa.tv/is-05/latest/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.1, IS-05 since v1.0

### MQTT
- **Name:** `urn:x-nmos:transport:mqtt`
- **Description:** Identifies Message Queuing Telemetry Transport (MQTT).
- **Specification:** [AMWA IS-05](https://specs.amwa.tv/is-05/)
- **Schemas:** [AMWA IS-05 (schemas)](https://specs.amwa.tv/is-05/latest/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.3, IS-05 since v1.1, IS-07 since v1.0

### WebSocket
- **Name:** `urn:x-nmos:transport:websocket`
- **Description:** Identifies the WebSocket transport type.
- **Specification:** [AMWA IS-05](https://specs.amwa.tv/is-05/)
- **Schemas:** [AMWA IS-05 (schemas)](https://specs.amwa.tv/is-05/latest/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.3, IS-05 since v1.1, IS-07 since v1.0

### NDI
- **Name:** `urn:x-nmos:transport:ndi`
- **Description:** Identifies the NDI transport type.
- **Specification:** [AMWA BCP-007-01](https://specs.amwa.tv/bcp-007-01/)
- **Schemas:** [AMWA BCP-007-01 (schemas)](https://specs.amwa.tv/bcp-007-01/branches/v1.0-dev/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.3, IS-05 since v1.2, BCP-007-01 since v1.0

### USB
- **Name:** `urn:x-nmos:transport:usb`
- **Description:** Identifies the IPMX USB transport type.
- **Specification:** [AMWA BCP-005-04](https://specs.amwa.tv/bcp-005-04/)
- **Schemas:** [AMWA BCP-005-04 (schemas)](https://specs.amwa.tv/bcp-005-04/branches/v1.0-dev/APIs/schemas/)
- **Applicability:** AMWA IS-04 since v1.3, IS-05 since v1.1, BCP-005-04 since v1.0
