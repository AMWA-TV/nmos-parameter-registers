# NMOS Device Types

This Device Types parameter register contains values that may be used to identify the role of a device within the production environment (such as camera, mixer, tally light etc.), used in the 'type' property of the device resource defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).

## Criteria

- Values used for the device 'type' property are not required to be included in this parameter register.
- Each entry MUST define a unique device type name (which is a URN).
- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the device type, as well as identifying the AMWA IS-04 API Versions for which the entry is applicable.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

Manufacturers MAY use their own namespaces to indicate device types which are not defined within the NMOS namespace at a particular API version, but should support be added in a future version the NMOS variant MUST be used when upgrading to that API version.

## Values

- **Name:** urn:x-nmos:device:generic
  - **Description:** Generic device.
  - **Proponent:** [AMWA](https://github.com/AMWA-TV)
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
- **Name:** urn:x-nmos:device:pipeline
  - **Description:** Pipeline device.
  - **Proponent:** [AMWA](https://github.com/AMWA-TV)
  - **Specification:** [AMWA IS-04 v1.0](https://github.com/AMWA-TV/nmos-discovery-registration/tree/v1.0.x)
