// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMsgSeender{
    address public addr;

    function updateAddr() public {
        addr = msg.sender;
    }
}