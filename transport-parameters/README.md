# NMOS Transport Parameters
{:.no_toc}

This register contains the names of additional transport parameters that could be included in the objects in an [IS-05](https://specs.amwa.tv/is-05) `transport_params` array.

For historical reasons, these ["externally-defined" parameters](https://specs.amwa.tv/is-05/v1.1/docs/4.0._Behaviour.html#externally-defined-parameters) are not URNs, like many other registered parameters.
Instead, they are clearly identified using the prefix `ext_`.

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Parameter names MUST match the regex pattern `^ext_[a-zA-Z0-9_]+$`, i.e. they start with `ext_` and contain only alphanumeric or underscore characters.
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification where the parameter is defined, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

## Values

Note: JSON schemas supporting validation of all the `ext_` transport parameters defined in this register are available as **[sender_transport_params_ext_register.json](sender_transport_params_ext_register.json)**
and **[receiver_transport_params_ext_register.json](receiver_transport_params_ext_register.json)**.
These MAY be used in addition to the transport-specific schemas, such as **sender_transport_params_rtp.json**, found in the AMWA IS-05 specification.

### IS-07 Source ID
- **Name:** `ext_is_07_source_id`
- **Description:** Identifies the Source that emits an IS-07 event.
- **Specification:** [AMWA IS-07 v1.0](https://specs.amwa.tv/is-07/v1.0)
- **Applicability:** AMWA IS-05 since v1.1, IS-07 since v1.0

### IS-07 REST API URL
- **Name:** `ext_is_07_rest_api_url`
- **Description:** URL of the Events API resource providing the current state and type of an Event emitter (Source).
- **Specification:** [AMWA IS-07 v1.0](https://specs.amwa.tv/is-07/v1.0)
- **Applicability:** AMWA IS-05 since v1.1, IS-07 since v1.0

### Link Offset Delay
- **Name:** `ext_link_offset_delay`
- **Description:** Identifies the Link Offset Delay used to synchronise Playout Time of all components of a stream by receivers.
- **Specification:** ST 2110-10:2021 and VSF TR-10-x
- **Applicability:** AMWA IS-05 since v1.1
