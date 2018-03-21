# Manifest Base URI

- **Name:** urn:x-nmos:control:manifest-base/v1.0
  - **Description:** Use of this control type provides redundant locators for sender transport files (also known as manifests).
  - **Proponent:** [Sony](https://github.com/sony)

This document describes a purely behavioural extension to IS-04 to provide redundant locators for an (IS-04) NMOS sender's transport file, using the above device control 'type'.

## Introduction

Since IS-04 v1.0, updates to the specification have endeavoured to facilitate redundant access to a node and its resources.
For example, the v1.1 update added the 'api' property to the node resource with an array of 'endpoints', deprecating the 'href' property.
Other URL properties in the model were introduced as arrays, including node 'services' and device 'controls'.

This extension affects the interpretation of the sender 'manifest_href'.

## Using the Manifest Base URI

The following actions SHOULD be taken by an IS-04 API client in order to construct redundant URLs to retrieve a sender's transport file.

1. Identify the associated device resource via the sender 'device_id'.
2. From that device resource, retrieve the list of Manifest Base URIs, that is the 'href' values of the controls of the above type.
3. Use the first value to relativize the sender 'manifest_href'.
4. Construct additional URLs by combining each advertised base URL with the relative URL.

API clients which do not implement this extension simply use the 'manifest_href' directly.

### Example

Note: There is no mandated format for transport file URLs. The 'href' values below are just examples.
Implementations are free to use the NMOS sender and/or device identifiers somewhere in the URLs, or to use some other strategy.

#### Sender resource

```json
{
  "id": "d7aa5a30-681d-4e72-92fb-f0ba0f6f4c3e",
  "device_id": "9126cc2f-4c26-4c9b-a6cd-93c4381c9be5",
  "manifest_href": "http://172.29.80.65/x-manufacturer/senders/d7aa5a30-681d-4e72-92fb-f0ba0f6f4c3e/stream.sdp",
  ...
}
```

#### Device resource

```json
{
  "id": "9126cc2f-4c26-4c9b-a6cd-93c4381c9be5",
  "controls": [
    {
      "type": "urn:x-nmos:control:manifest-base/v1.0",
      "href": "http://172.29.80.65/x-manufacturer/senders/"
    },
    {
      "type": "urn:x-nmos:control:manifest-base/v1.0",
      "href": "http://172.29.180.65/x-manufacturer/senders/"
    },
    ...
  ],
  ...
}
```

#### Redundant URLs

- http://172.29.80.65/x-manufacturer/senders/d7aa5a30-681d-4e72-92fb-f0ba0f6f4c3e/stream.sdp
- http://172.29.180.65/x-manufacturer/senders/d7aa5a30-681d-4e72-92fb-f0ba0f6f4c3e/stream.sdp

### Implementation Notes

It is expected that all web-development platforms provide construction of absolute URLs from a base URL and a relative URL.

The "relativize" operation seems to be widely available too (e.g. [URI.js / relativeTo](http://medialize.github.io/URI.js/docs.html#relativeto))
or there are public domain algorithms available for this (such as [getRelativeURL.js](https://gist.github.com/m93a/2553dd45de35aa05d0233c6f9dc04bc2)).
In many cases identifying a simple string prefix match is sufficient (and using URLs for which this is the case is RECOMMENDED).

## Rationale

Several other possible solutions to the single point of failure presented by 'manifest_href' were identified and have been rejected.

1. **Use a DNS name in the 'manifest_href' property**  
   This approach would provide redundancy by indirection in the style of DNS load balancing.
   However, this would require independent configuration of a separate system and goes against the explicit redundancy now familiar in the rest of IS-04.
2. **Use the Connection API /transportfile endpoint**  
   This has several issues:
   - It would effectively mandate IS-04 Nodes also implement IS-05.
     While implementation of both specifications is attractive in many cases, it makes incremental adoption of the NMOS specifications harder;
     IS-05 is a richer API than required to resolve this issue. In some cases, device connection management may (also) be provided by other means.
   - This endpoint itself does not in any case on its own provide redundant locators for the transport file;
     this endpoint only provides a one-to-one association between Connection API and transport file.
     Redundant Connection APIs must be advertised via the IS-04 device 'controls' array.
3. **Deprecate the 'manifest_href' in favour of a sender array-property, e.g. 'manifest_hrefs'**  
   This is the approach that matches the existing revisions that have been made to IS-04. However, it would necessitate waiting for e.g. IS-04 v1.3.
   Deployments into the market are going ahead now with v1.2, and require a solution imminently.
4. **Simplify the current solution a little, directly using a relative URL as the 'manifest_href' value**  
   This has been rejected as likely to be misinterpreted by existing IS-04 clients.
5. **Use different 'manifest_href' values in different renditions of the Node API**  
   This is the approach IS-04 v1.0 used for node 'href'. It is rejected since it violates the unique resource hash of 'id' + 'version' required by IS-04.
6. **Advertise multiple sender resources that are otherwise equivalent**  
   This seems to introduce more problems than it solves.
