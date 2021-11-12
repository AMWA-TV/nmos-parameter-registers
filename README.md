# AMWA NMOS Parameter Registers

[![Lint Status](https://github.com/AMWA-TV/nmos-parameter-registers/workflows/Lint/badge.svg)](https://github.com/AMWA-TV/nmos-parameter-registers/actions?query=workflow%3ALint)
[![Render Status](https://github.com/AMWA-TV/nmos-parameter-registers/workflows/Render/badge.svg)](https://github.com/AMWA-TV/nmos-parameter-registers/actions?query=workflow%3ARender)

<!-- INTRO-START -->

### What does it do?

- Lists constants for many types of parameter values used in NMOS specifications
- Defines procedures for updating these

### Why does it matter?

- Supports extensibity of NMOS 
- Promotes interoperability by ensuring common definitions can be shared easily

### How does it work?

- Each type of parameter has a register, listed on this site
- In most parameter registers, values are specified as `urn:x-nmos:<type>:<value>[/<version>]`
- Updates are proposed and reviewed using GitHub pull requests (PRs)

<!-- INTRO-END -->

The following list of parameter registers are currently maintained:

- [Node Service Types](./node-service-types/)
- [Device Control Types](./device-control-types/)	
- [Formats](./formats/)
- [Transports](./transports/)
- [Device Types](./device-types/)
- [Tags](./tags/)
- [Flow Attributes](./flow-attributes/)
- [Capabilities](./capabilities/)
- [Transport Parameters](./transport-parameters/)

## Getting started

There is more information about the NMOS Specifications and their GitHub repos at <https://specs.amwa.tv/nmos>.
