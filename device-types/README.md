# NMOS Device Types

This Device Types parameter repository contains values that may be used to identify the role of a device within the production environment (such as camera, mixer, tally light etc.), used in the 'type' property of the device resource defined in the [AMWA NMOS Discovery and Registration Specification (IS-04)](https://github.com/AMWA-TV/nmos-discovery-registration).

## Guidance

- Values used for the device 'type' property are not required to be included in this repository.
- Each entry MUST define a unique device type name (which is a URN).
- Each entry MUST have a short description.
- Each entry SHOULD provide a link to a specification for the device type, as well as identifying the IS-04 API Versions for which the entry is applicable.
- Additions and updates to this parameter repository may be submitted via a GitHub Pull Request (PR).

Manufacturers MAY use their own namespaces to indicate device types which are not defined within the NMOS namespace at a particular API version, but should support be added in a future version the NMOS variant MUST be used when upgrading to that API version.

## Values

- **Name:** urn:x-nmos:device:generic
  - **Description:** Generic device.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
- **Name:** urn:x-nmos:device:pipeline
  - **Description:** Pipeline device.
  - **Specification:** [IS-04](https://github.com/AMWA-TV/nmos-discovery-registration) v1.0
