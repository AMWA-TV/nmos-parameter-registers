# NMOS Node Service Types

This Node Service Types parameter repository contains values that may be used to identify a service 'type' in the 'services' property of the node resource defined in the [AMWA NMOS Discovery and Registration Specification (IS-04)](https://github.com/AMWA-TV/nmos-discovery-registration). Note: the 'services' property was introduced in IS-04 v1.1.

## Guidance

- Values used for the service 'type' property are NOT REQUIRED to be included in this repository.
- Each entry MUST define a unique service type name.
- Each entry MUST have a short description and proponent(s).
- Each entry SHOULD provide a link to a specification for the service type, as well as specifying the IS-04 versions for which the entry is applicable.
- In the case of substantial revision to the service specification, a new service type name MUST be defined. Using versioned names is therefore RECOMMENDED.
- Additions and updates to this parameter repository may be submitted via a GitHub Pull Request (PR).

## Values

- **Name:** urn:x-manufacturer:service:status
  - **Description:** Used purely as an example in IS-04 (see [nodeapi-v1.1-self-get-200.json](https://github.com/AMWA-TV/nmos-discovery-registration/blob/v1.1/examples/nodeapi-v1.1-self-get-200.json)).
  - **Proponent:** [AMWA-TV](https://github.com/AMWA-TV)
- **Name:** urn:x-ipstudio:service:mdnsbridge/v1.0
  - **Description:** This API provides a zeroconf/HTTP bridge for NMOS service types.
  - **Proponent:** [BBC](https://github.com/bbc)
  - **Specification:** [NMOS MDNS Bridge](https://github.com/bbc/nmos-mdns-bridge)
