# NMOS Device Types
{:.no_toc}

This Device Types parameter register contains values that may be used to identify the role of a device within the production environment (such as camera, mixer, tally light etc.), used in the `type` property of the device resource defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04).

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Values used for the device `type` property are not required to be included in this parameter register.
- Each entry MUST define a unique device type name (which is a URN).
- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the device type, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

Manufacturers MAY use their own namespaces to indicate device types which are not currently defined within the NMOS namespace.

## Values

### `urn:x-nmos:device:generic`
- **Description:** Generic device.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [AMWA IS-04 v1.0](https://specs.amwa.tv/is-04/v1.0)
- **Applicability:** AMWA IS-04 since v1.1

### `urn:x-nmos:device:pipeline`
- **Description:** Pipeline device.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [AMWA IS-04 v1.0](https://specs.amwa.tv/is-04/v1.0)
- **Applicability:** AMWA IS-04 since v1.1
