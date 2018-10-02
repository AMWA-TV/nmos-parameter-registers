# NMOS Tags

This defines specific and reserved NMOS "tags" for NMOS resources. Tags are part of all common NMOS resources.  They enable NMOS resources to expose supplemental information without changing current IS-04 specification while maintaining backward compatibility.

Parameter register contains values that may be used to expose some reserved tags on a resource by using the 'tags' property defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://github.com/AMWA-TV/nmos-discovery-registration).  This applies to version 1.0 and after.

## Criteria

- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the tag usage, as well as identifying the AMWA IS-04 API Versions for which the entry is applicable.
- In the case of substantial revision to the tag specification, a new tag type name MUST be defined. Using versioned names is therefore RECOMMENDED when this applies.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../README.md#general-procedures-and-criteria).

## Values

- **Name:** urn:x-nmos:grouphint
  - **Description:** OPTIONAL group tag that can be used in a JSON description for an NMOS resource.
  - **Proponent:** [Grass Valley, a Belden brand](http://grassvalley.com/) (contact [Serge Grondin](https://github.com/sagrondin))
  - **Specification:** [Group Hint tags](grouphint.md)
