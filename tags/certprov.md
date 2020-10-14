# Certificate Provisioning Tags

- **Name:**  urn:x-nmos:tag:certprov/v1.0
  - **Description:** Certificate Provisioning tag that can be used advertise is BCP-003-03 is enabled.
  - **Proponent:** [AMWA](https://github.com/AMWA-TV/)

This document describes an application of the AMWA IS-04 “tags” structures to enable control systems to identify Nodes that are using BCP-003-03 for automated certificate provisioning.

## Introduction

Since AMWA IS-04 v1.0, NMOS resources contain a “tags” field that has not been used in a standard way.

## Certificate Provisioning URN

The certificate provisioning URN 'urn:x-nmos:tag:certprov' defines if BCP-003-03 is 'enabled' or 'disabled' on a Node.

```json
"tags": {
   "urn:x-nmos:tag:certprov/v1.0": [
      "{state}"
   ]
}
```

Where

| Parameter | Description | Values |
| --------- | ----------- | ------ |
| state | A string that defines if BCP-003-03 is enabled or disabled | "enabled" or "disabled" (default) |


### Examples

#### 1. BCP-003-03 enabled

JSON tags for when BCP-003-03 is being used to automatically provision TLS certificates
```json
"tags": {
   "urn:x-nmos:tag:certprov/v1.0": [
      "enabled"
   ]
}
```

#### 2. BCP-003-03 disbaled

JSON tags for when BCP-003-03 is NOT being used to automatically provision TLS certificates
```json
"tags": {
   "urn:x-nmos:tag:certprov/v1.0": [
      "disabled"
   ]
}
```
