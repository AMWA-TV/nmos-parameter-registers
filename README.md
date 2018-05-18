# AMWA NMOS Parameters Repository

The [AMWA Networked Media Open Specifications](https://github.com/AMWA-TV/nmos) are intended to support extensibility, using constants for parameter values that identify additional operational constraints or capabilities. In order to promote interoperability, this repository contains entries for constants used, for example, with the [Discovery and Registration (IS-04)](https://github.com/AMWA-TV/nmos-discovery-registration) and [Device Connection Management (IS-05)](https://github.com/AMWA-TV/nmos-device-connection-management) Specifications. These specifications do not require values to be included in this repository but doing so allows common definitions to be shared and deployed more easily.

Parameter values recorded herein may be applicable to one or more of the AMWA NMOS specifications, and to one or more versions of each specification. The Parameters Repository as a whole is not versioned, and is expected to be updated as needed to promote interoperability.

## Parameter Repositories

The following parameter repositories are maintained:

- [NMOS Node Service Types](node-service-types/)
- [NMOS Device Control Types](device-control-types/)
- [NMOS Formats](formats/)
- [NMOS Transports](transports/)
- [NMOS Device Types](device-types/)

Each parameter repository defines specific criteria and considerations for when and how values can be included, and identifies the procedures for revision and deprecation of entries.

New parameter repositories may be added in the future as required by AMWA NMOS specifications.

### General Procedures and Criteria

The procedures for updating a parameter repository are straightforward.

- Any AMWA member can propose additions or updates.
- In general, deprecation of an entry is to be preferred over removal or substantial amendment.
- The changes should be submitted via a [Pull Request (PR)](https://help.github.com/articles/about-pull-requests/).
- The Pull Request will be reviewed according to the criteria by an [AMWA review team](https://github.com/orgs/AMWA-TV/teams/nmos-parameters-admin).
- If the necessary criteria have been met, the changes will be merged into the repository.

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL
NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED",
"MAY", and "OPTIONAL" in parameter repository criteria are to be interpreted as
described in [RFC2119](https://tools.ietf.org/html/rfc2119).

Note that the force of these words is confined to the scope of the repository, described above.

A typical example of specific criteria is found in the [NMOS Node Service Types](node-service-types/) parameter repository. IS-04, since v1.1, allows a list of 'services' to be advertised on the node resource in the Node API. Each advertised service has a 'type' property whose value is a Uniform Resource Name (URN), as well as its 'href' property which provides a URL to reach the service. The Node Service Types parameter repository provides implementers with the means to discover and disclose service type names (URNs) that are in use.

So, for example, its criteria includes the following statements:

> - Each entry MUST define a unique service type name (which is a URN).
> - Each entry MUST have a short description and include contact information for the proponent(s).
> - Each entry SHOULD provide a link to a specification for the service type, as well as identifying the IS-04 API Versions for which the entry is applicable.
> - In the case of substantial revision to the service specification, a new service type name MUST be defined. Using versioned names is therefore RECOMMENDED.
> - Additions and updates to this parameter repository are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](README.md#general-procedures-and-criteria).

However, modifications to a parameter repository may be more closely controlled than this. For example, in the case of the [NMOS Formats](formats/) parameter repository, values SHALL only be added by a revision to an AMWA NMOS specification.

For more information about AMWA, NMOS and the Networked Media Incubator, please refer to http://amwa.tv/.
