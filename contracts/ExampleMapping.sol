// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;


contract ExampleMapping{
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public addressToIds;
    
    function setMapping(uint _index) public {
        myMapping[_index] = true;
    }

    function setMessageSenderToTrue() public {
        addressToIds[msg.sender] = true;
    }
}
