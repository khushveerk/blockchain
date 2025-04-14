# IPFS 

IPFS stands for InterPlanetary File System. It’s a decentralized protocol and peer-to-peer network for storing and sharing data in a distributed file system.

## Core Concepts
### a. Content Addressing
Instead of URLs (which point to a location), IPFS uses CIDs (Content Identifiers).

These are cryptographic hashes (like QmX...) that uniquely identify the content itself, not its location.

### b. Merkle DAG (Directed Acyclic Graph)
IPFS uses a Merkle DAG to store data.

Every file and folder is broken into blocks; each block points to others using hashes.

It's immutable, so if content changes, its hash changes.

### c. Nodes & Peers
Every computer in the network runs an IPFS node.

Nodes store data and share it with others.

When you retrieve data, you fetch it from whichever peer has it — not from a central server.


## Resources to Go Deeper
Official Docs

Protoschool: Hands-on IPFS + Web3 tutorials

IPFS GitHub
