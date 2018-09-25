# NMOS Group hints

This defines specific NMOS group hint tags for NMOS resources. Tags are part of all common NMOS resources. The most obvious usage of group hints is to help identify natural grouping of resources inside a node.  This gives an easy way for control systems to identify relationships between resources without changing current IS-04 specification.

Parameter register contains values that may be used to identify resources relationships, by using the 'tags' property defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).  This applies to version 1.0 and after.

## Criteria

- Values used for the group hints tags are not required to be included in this parameter register.
- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the service type, as well as identifying the AMWA IS-04 API Versions for which the entry is applicable.
- In the case of substantial revision to the service specification, a new service type name MUST be defined. Using versioned names is therefore RECOMMENDED.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

## Values

- **Name:** urn:x-nmos:grouphint:group
  - **Description:** OPTIONAL group tag that can be used in a JSON description for an NMOS resource.
  - **Proponent:** [Grass Valley](https://github.com/AMWA-TV/nmos-parameter-registers) (contact [@sagrondin](https://github.com/sagrondin))
  - **Specification:** [Group Hints Rules](group-hints-rules.md)
- **Name:** urn:x-nmos:grouphint:role
  - **Description:**  OPTIONAL role tag that can be used in a JSON description for an NMOS resource.
  - **Proponent:** [Grass Valley](https://github.com/AMWA-TV/nmos-parameter-registers) (contact [@sagrondin](https://github.com/sagrondin))
  - **Specification:** [Group Hints Rules](group-hints-rules.md)
