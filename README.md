# AMWA NMOS Parameter Registers

[![Lint Status](https://github.com/AMWA-TV/nmos-parameter-registers/workflows/Lint/badge.svg)](https://github.com/AMWA-TV/nmos-parameter-registers/actions?query=workflow%3ALint)
[![Render Status](https://github.com/AMWA-TV/nmos-parameter-registers/workflows/Render/badge.svg)](https://github.com/AMWA-TV/nmos-parameter-registers/actions?query=workflow%3ARender)

[//]: # "INTRO-START"

### What does it do?

- List constants for parameter values used in NMOS specifications, currently:
  - [Device Control Types](branches/master/device-control-types/)
  - [Node Service Types](branches/master/node-service-types/)
  - [Formats](branches/master/formats/)
  - [Transports](branches/master/transports/)
  - [Device Types](branches/master/device-types/)
  - [Tags](branches/master/tags/)
  - [Caps Tags](branches/capabilities/tags/)

- Defines [procedures](branches/master/common/) for updating these

### Why does it matter?

- Support extensibity of NMOS 
- Promote interoperability by ensuring common definitions can be shared easily

### How does it work?

- Each type of parameter has a register, listed on this site.
- Values are represented as ``urn:x-nmos:<type>:<value>/<version>``
- Updates are made using GitHub pull requests (PRs)

[//]: # "INTRO-END"

## Getting started

There is more information about the NMOS Specifications and their GitHub repos at <https://specs.amwa.tv/nmos>.
