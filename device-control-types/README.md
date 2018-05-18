# NMOS Device Control Types

This Device Control Types parameter register contains values that may be used to identify a control 'type', used in the 'controls' property of the device resource defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration). Note: the 'controls' property was introduced in AMWA IS-04 v1.1.

## Criteria

- Values used for the control 'type' property are not required to be included in this parameter register.
- Each entry MUST define a unique control type name (which is a URN).
- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the control type, as well as identifying the AMWA IS-04 API Versions for which the entry is applicable.
- In the case of substantial revision to the control specification, a new control type name MUST be defined. Using versioned names is therefore RECOMMENDED.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

## Values

- **Name:** urn:x-nmos:control:sr-ctrl/v1.0
  - **Description:** Identifies the Connection API v1.0.
  - **Proponent:** [AMWA](https://github.com/AMWA-TV)
  - **Specification:** [AMWA IS-05 NMOS Device Connection Management v1.0](https://github.com/AMWA-TV/nmos-device-connection-management/tree/v1.0.x)
- **Name:** urn:x-nmos:control:manifest-base/v1.0
  - **Description:** Use of this control type provides redundant locators for sender transport files (also known as manifests).
  - **Proponent:** [Sony](https://github.com/sony) (contact [@garethsb-sony](https://github.com/garethsb-sony))
  - **Specification:** [Manifest Base URL](manifest-base.md)
