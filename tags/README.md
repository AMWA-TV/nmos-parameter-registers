# NMOS Tags
{:.no_toc}

This Tags parameter register defines specific and reserved NMOS "tags" for NMOS resources. Tags are part of all common NMOS resources. They enable NMOS resources to expose supplemental information without changing current IS-04 specification while maintaining backward compatibility.

The register contains values that may be used in the `tags` property defined in the [AMWA IS-04 NMOS Discovery and Registration Specification](https://specs.amwa.tv/is-04) since v1.0.

- A markdown unordered list which will be replaced with the ToC, excluding the "Contents header" from above
{:toc}

## Criteria

- Each entry MUST have a short description and include contact information for the proponent(s).
- Each entry SHOULD provide a link to a specification for the tag usage, as well as identifying any AMWA Specifications and versions for which the entry is applicable.
- In the case of substantial revision to the tag specification, a new tag type name MUST be defined. Using versioned names is therefore RECOMMENDED when this applies.
- Additions and updates to this parameter register are to be submitted via a Pull Request (PR) according to the [General Procedures and Criteria](../common/).

Note: AMWA IS-04 specifies general requirements for the construction and [use of URNs](https://specs.amwa.tv/is-04/releases/v1.3.1/docs/2.1._APIs_-_Common_Keys.html#use-of-urns) in NMOS specifications.

## Values

### Asset Manufacturer
- **Name:** `urn:x-nmos:tag:asset:manufacturer/v1.0`
- **Description:** The name used by the company or other organisation creating/selling an Asset.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [BCP-002-02](https://specs.amwa.tv/bcp-002-02)
- **Applicability:** AMWA IS-04 since v1.0

### Asset Product
- **Name:** `urn:x-nmos:tag:asset:product/v1.0`
- **Description:** The name given by the Manufacturer for the Asset.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [BCP-002-02](https://specs.amwa.tv/bcp-002-02)
- **Applicability:** AMWA IS-04 since v1.0

### Asset Instance Identifier
- **Name:** `urn:x-nmos:tag:asset:instance-id/v1.0`
- **Description:** This identifier distinguishes Assets that have the same Product name. For a hardware Asset this is the serial number assigned by the Manufacturer.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [BCP-002-02](https://specs.amwa.tv/bcp-002-02)
- **Applicability:** AMWA IS-04 since v1.0

### Asset Function
- **Name:** `urn:x-nmos:tag:asset:function/v1.0`
- **Description:** The name of the function implemented by a Device within its Node.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [BCP-002-02](https://specs.amwa.tv/bcp-002-02)
- **Applicability:** AMWA IS-04 since v1.0

### Group Hint v1.0
- **Name:** `urn:x-nmos:tag:grouphint/v1.0`
- **Description:** Group tag that can be used to identify natural groups of sources and destinations.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [Group Hint tags](grouphint.md)
- **Applicability:** AMWA IS-04 since v1.0

### Certificate Provisioning
- **Name:** `urn:x-nmos:tag:certprov`
- **Description:** Certificate Provisioning tag that can be used to advertise if BCP-003-03 is enabled.
- **Proponent:** [AMWA](https://www.amwa.tv/)
- **Specification:** [Certificate Provisioning tags](certprov.md)
- **Applicability:** AMWA IS-04 since v1.0

### TR-09-2 Booking List
- **Name:** `urn:x-vsf:tag:tr-09-2:booking-list/v1.0`
- **Description:** Booking List tag that can be used to indicate that an NMOS resource is part of one or more TR-09-2 bookings.
- **Proponent:** [VSF](https://www.vsf.tv/)
- **Specification:** [TR-09-2 tags](tr-09-2.md)
- **Applicability:** AMWA IS-04 since v1.0

### TR-09-2 Current Booking
- **Name:** `urn:x-vsf:tag:tr-09-2:current-booking/v1.0`
- **Description:** Current Booking tag that can be used to indicate the current active TR-09-2 booking.
- **Proponent:** [VSF](https://www.vsf.tv/)
- **Specification:** [TR-09-2 tags](tr-09-2.md)
- **Applicability:** AMWA IS-04 since v1.0
