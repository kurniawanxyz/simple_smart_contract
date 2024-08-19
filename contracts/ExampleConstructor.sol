// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleContract{
    string public myString;

    constructor(string memory _myString){
        myString = _myString;
    }
}