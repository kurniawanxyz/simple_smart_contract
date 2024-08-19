// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract TheBlockchainMessagger {
    string public message;
    address public owner = msg.sender;
    uint public messageChange;

    function setMessage(string memory _message) public {
        if(owner == msg.sender){
            message = _message;
            messageChange++;
        }
    } 
}