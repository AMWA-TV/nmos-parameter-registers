# NMOS Extra/External Transport Parameters

This register contains the names of additional (or "extra") parameters that could be included in an [IS-05](https://specs.amwa.tv/is-05) `transport_params` array. These are also known as "external" parameters because they are defined externally to IS-05 (in another NMOS specification or by a third party).

For historical reasons these start with `ext_` and are not URNs.

## Criteria

- Parameter names MUST match the regex pattern `^ext_[a-zA-Z0-9_]+$`. i.e. they start with `ext_` and contain only alphanumeric or underscore characters.
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification where the parameter is defined, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

## Values

- **Name:** `ext_is_07_source_id`
  - **Description:** Identifies the Source that emits an IS-07 event.
  - **Specification:** [AMWA IS-07 v1.0](https://github.com/AMWA-TV/nmos-event-tally/tree/v1.0.x)
  - **Applicability:** AMWA IS-05 v1.1+, IS-07 v1.0+
- **Name:** `ext_is_07_rest_api_url`
  - **Description:** URL of the Events API resource providing the current state and type of an Event emitter (Source).
  - **Specification:** [AMWA IS-07 v1.0](https://github.com/AMWA-TV/nmos-event-tally/tree/v1.0.x)
  - **Applicability:** AMWA IS-05 v1.1+, IS-07 v1.0+
