# NMOS Formats
{:.no_toc}

This Formats parameter register contains values that may be used to identify a data format, used in the `format` property of the source and flow resources defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Values used for the `format` property are defined only by revisions of AMWA IS-04 itself.
- Each entry MUST define a unique format name (which is a URN).
- Each entry MUST have a short description.
- Each entry MUST identify any AMWA Specifications and versions from which it is valid.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

Query API clients MUST be tolerant to the presence of formats not yet defined here which may be added in later API versions.

Note: AMWA IS-04 specifies general requirements for the construction and [use of URNs](https://specs.amwa.tv/is-04/releases/v1.3.1/docs/2.1._APIs_-_Common_Keys.html#use-of-urns) in NMOS specifications.

## Values

### Video
- **Name:** `urn:x-nmos:format:video`
- **Description:** Identifies (sources of) video flows.
- **Specification:** [AMWA IS-04 v1.0](https://specs.amwa.tv/is-04/v1.0)
- **Applicability:** AMWA IS-04 since v1.0

### Audio
- **Name:** `urn:x-nmos:format:audio`
- **Description:** Identifies (sources of) audio flows.
- **Specification:** [AMWA IS-04 v1.0](https://specs.amwa.tv/is-04/v1.0)
- **Applicability:** AMWA IS-04 since v1.0

### Data
- **Name:** `urn:x-nmos:format:data`
- **Description:** Identifies (sources of) data flows.
- **Specification:** [AMWA IS-04 v1.0](https://specs.amwa.tv/is-04/v1.0)
- **Applicability:** AMWA IS-04 since v1.0

#### Event Data
- **Name:** `urn:x-nmos:format:data.event`
- **Description:** Identifies (sources of) Query API subscription event Grains.
- **Specification:** [AMWA IS-04 v1.0](https://specs.amwa.tv/is-04/v1.0)
- **Applicability:** AMWA IS-04 since v1.0

Note: This subclassification is only used for Query API subscription event data. IS-07 Event & Tally event sources and flows use the URN base.

### Multiplexed
- **Name:** `urn:x-nmos:format:mux`
- **Description:** Identifies (sources of) multiplexed flows.
- **Specification:** [AMWA IS-04 v1.1](https://specs.amwa.tv/is-04/v1.1)
- **Applicability:** AMWA IS-04 since v1.1
