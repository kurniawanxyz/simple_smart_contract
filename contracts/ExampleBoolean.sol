// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleBoolean {
    bool public isAvailable;

    function changeAvailable() public 
    {
        isAvailable = ! isAvailable;
    }
}