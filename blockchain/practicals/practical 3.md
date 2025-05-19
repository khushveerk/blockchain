## que3 :- Develop a contract that only allows the deployer (owner) to call a specific function (use modifiers).

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerRestricted {
    address public owner;
    string private secretMessage;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this");
        _;
    }
    
    function setSecretMessage(string memory _message) public onlyOwner {
        secretMessage = _message;
    }
    
    function getSecretMessage() public view onlyOwner returns (string memory) {
        return secretMessage;
    }
}
```

