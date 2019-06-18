# AMWA NMOS Parameter Registers

The [AMWA Networked Media Open Specifications](https://github.com/AMWA-TV/nmos) are intended to support extensibility, using constants for parameter values that identify additional operational constraints or capabilities. In order to promote interoperability, the parameter registers in this repository contain entries for constants used, for example, with the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration) and the [AMWA IS-05 NMOS Device Connection Management Specification](https://github.com/AMWA-TV/nmos-device-connection-management). These specifications do not require values to be included in this repository but doing so allows common definitions to be shared and deployed more easily.

Parameter values recorded herein may be applicable to one or more of the AMWA NMOS specifications, and to one or more versions of each specification. The Parameter Registers are not themselves versioned, and are expected to be updated as needed to promote interoperability.

## Parameter Registers

The following parameter registers are maintained:

- [NMOS Node Service Types](node-service-types/)
- [NMOS Device Control Types](device-control-types/)
- [NMOS Formats](formats/)
- [NMOS Transports](transports/)
- [NMOS Device Types](device-types/)
- [NMOS Tags](tags/)
- [NMOS Flow Attributes](flow-attributes/)
- [NMOS Capabilities](capabilities/)

Each parameter register defines specific criteria and considerations for when and how values can be included, and identifies the procedures for revision and deprecation of entries.

New parameter registers may be added in the future as required by AMWA NMOS specifications.

### General Procedures and Criteria

There are a number of procedures and criteria that are common to all registers. These are documented [here](common/).

For more information about AMWA, NMOS and the Networked Media Incubator, please refer to <http://amwa.tv/>.
