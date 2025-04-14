# IPFS Gateway

- An IPFS gateway is a standardized HTTP API for getting content-addressed data from IPFS nodes and CID providers.

 ## Gateway providers
Regardless of who deploys a gateway and where, any IPFS gateway resolves access to any requested IPFS content identifier.

## Your local gateway
Your machine may host a gateway as a local service; e.g., at localhost:8080. You have a local gateway service if you installed IPFS Desktop, Kubo or another form of IPFS node.

### Public gateways
Public (recursive) gateways are provided by various organizations, including the IPFS Foundation as a public utility.

For a list of public gateways, see the IPFS Gateways Checker (opens new window).

## Gateway types
There are multiple gateway types, each with specific use case, security, performance, and functional implications.

### 1. Recursive vs. non-recursive gateways
### 2.Trusted vs. trustless gateways
### 3.Authentication support


### 1.Recursive vs. non-recursive gateways
- Recursive gateways are gateways that will attempt to retrieve content from other peers on the network if they do not have it locally. This is the default behavior in Rainbow (opens new window)and Kubo running with Gateway.NoFetch=false (opens new window).

- Non-recursive gateways are gateways that only serve content that they have themselves. For example, Kubo can be configured to act as a non-recursive gateway by setting the Gateway.NoFetch=true (opens new window)option.

In general, recursive gateways are more powerful for end-users because they abstract away all details of the peer-to-peer network. However, they are much more resource-intensive for operators and prone to abuse.

#### Trustless, verifiable retrieval 
from non-recursive gateways is becoming a popular way to provide IPFS content to the network (HTTP (opens new window)as an alternative or in addition to Bitswap).

### 2.Trusted vs. trustless gateways
See Trusted vs. Trustless Gateways for more information.

#### Read-only gateways
Read-only gateways are the simplest kind of gateway. This gateway type provides a way to fetch IPFS content using the HTTP GET method.

### 3.Authenticated gateways
If a gateway provider wants to limit access to requests with authentication, they may need to configure a reverse proxy, develop an IPFS plugin, or set a cache-layer above IPFS.

Configuring a reverse proxy is the most popular way for providers handling authentication. Reverse proxy can also keep the original IPFS API calls which makes gateway adaptable to all IPFS SDK and toolkits



## IPFS W3Auth Gateway

IPFS Public Gateways(aka. IPFS GW) provide an HTTP-based service that allows IPFS-ignorant browsers and tools to access IPFS content. It's like a bridge connecting Web2 and Web3 world.

IPFS GWs support read-only and writable API calls. However, the original GW configuration only support ### public(open-to-all) or ### private(close-to-all) way.
If the GW providers want to limit the access only to the requests with authentication, they may need to config a reverse proxy, develop a IPFS plugin or set a cache-layer above IPFS.

Reverse proxy is the most popular way for providers handling authentication. This tutorial configuring private gateway includes a description of controling access with Nginx. Reverse proxy can also keep the original IPFS API calls which makes GW adaptable to all IPFS SDK/toolkits.


git repo link for diving deep into w3auth GW :-
```bash
https://github.com/crustio/ipfs-w3auth-gateway
```
