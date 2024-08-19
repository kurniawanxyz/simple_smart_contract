// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SimpleContract{
    string public myName = "Adi Kurniawan";

    function  setMyName(string memory _newName) public {
        myName =_newName;
    }
}