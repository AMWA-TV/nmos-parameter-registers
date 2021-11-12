# Certificate Provisioning Tags

- **Name:** `urn:x-nmos:tag:certprov`
  - **Description:** Certificate Provisioning tag that can be used to advertise if BCP-003-03 is enabled.
  - **Proponent:** [AMWA](https://www.amwa.tv/)

This document describes an application of the AMWA IS-04 `tags` structures to enable control systems to identify Nodes that are using BCP-003-03 for automated certificate provisioning.

## Introduction

Since AMWA IS-04 v1.0, NMOS resources contain a `tags` field that has not been used in a standard way.

## Certificate Provisioning URN

The certificate provisioning URN `urn:x-nmos:tag:certprov` defines a list of BCP-003-03 versions that are 'enabled' on a Node. If BCP-003-03 is not currently enabled on a Node, no version number should be listed.

```json
"tags": {
   "urn:x-nmos:tag:certprov": [
      "<enabled version>"
   ]
}
```

Where

| Parameter | Description | Values |
| --------- | ----------- | ------ |
| enabled version | A string that defines what version of BCP-003-03 is enabled | Version strings, `v<MAJOR>.<MINOR>`, e.g. `v1.0` |


### Examples

#### 1. BCP-003-03 version 1.0 enabled

JSON tags for when BCP-003-03 is being used to automatically provision TLS certificates
```json
"tags": {
   "urn:x-nmos:tag:certprov": [
      "v1.0"
   ]
}
```

#### 2. Multiple BCP-003-03 versions enabled

JSON tags for when BCP-003-03 is being used to automatically provision TLS certificates and the Node supports multiple versions
```json
"tags": {
   "urn:x-nmos:tag:certprov": [
      "v1.0",
      "v1.1"
   ]
}
```

#### 3. BCP-003-03 implemented but disabled

JSON tags for when BCP-003-03 is supported but NOT currently being used to automatically provision TLS certificates
```json
"tags": {
   "urn:x-nmos:tag:certprov": [
   ]
}
```
