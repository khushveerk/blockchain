# IPFS 

IPFS stands for InterPlanetary File System. It’s a decentralized protocol and peer-to-peer network for storing and sharing data in a distributed file system.


![Image](https://github.com/user-attachments/assets/d4868243-c6dd-4d2f-a628-7e074bdc7f4e)


## Core Concepts
### a. Content Addressing
Instead of URLs (which point to a location), IPFS uses CIDs (Content Identifiers).

These are cryptographic hashes (like QmX...) that uniquely identify the content itself, not its location.

#### In content addressing:

-Data is identified by its content, not its location.
-Each piece of content is given a unique identifier based on its content.
-The identifier is a cryptographic hash, a digital fingerprint of the content.
-This hash changes if even a single bit of the content changes, ensuring data integrity.

### b. Merkle DAG (Directed Acyclic Graph)
IPFS uses a Merkle DAG to store data.

Every file and folder is broken into blocks; each block points to others using hashes.

It's immutable, so if content changes, its hash changes.

### c. Nodes & Peers
Every computer in the network runs an IPFS node.

Nodes store data and share it with others.

When you retrieve data, you fetch it from whichever peer has it — not from a central server.

## how it's different from HTTP?

In a traditional HTTP-based system, content is located and accessed through URLs, which point to the server's physical location where the content is stored. This location-based system has inherent limitations in terms of efficiency, security, and data permanence.

Content addressing, on the other hand, changes the focus from where data is stored to what the data actually is.
