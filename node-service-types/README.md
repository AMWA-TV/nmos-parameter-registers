# NMOS Node Service Types

This Node Service Types parameter register contains values that may be used to identify a service 'type', used in the 'services' property of the node resource defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration). Note: the 'services' property was introduced in AMWA IS-04 v1.1.

## Criteria

- Values used for the service 'type' property are not required to be included in this parameter register.
- Each entry MUST define a unique service type name (which is a URN).
- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the service type, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- In the case of substantial revision to the service specification, a new service type name MUST be defined. Using versioned names is therefore RECOMMENDED.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

## Values

- **Name:** urn:x-manufacturer:service:status
  - **Description:** Used purely as an example in AMWA IS-04 (see [nodeapi-self-get-200.json](https://amwa-tv.github.io/nmos-discovery-registration/tags/v1.3/examples/nodeapi-self-get-200.html)).
  - **Proponent:** [AMWA](https://github.com/AMWA-TV)
- **Name:** urn:x-ipstudio:service:mdnsbridge/v1.0
  - **Description:** This API provides a zeroconf/HTTP bridge for NMOS service types.
  - **Proponent:** [BBC](https://github.com/bbc) (contact [@simonrankine](https://github.com/simonrankine))
  - **Specification:** [NMOS MDNS Bridge](https://github.com/bbc/nmos-mdns-bridge)
  - **Applicability:** AMWA IS-04 v1.0+
