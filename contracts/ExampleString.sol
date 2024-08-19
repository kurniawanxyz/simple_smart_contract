// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleString{
    string public myString  = "Hello Neighbor";
    function setMyString(string memory _mystring) public  {
        myString = _mystring;
    }

    function compareMyString(string memory _mystring) public  view  returns (bool){
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_mystring));
    }
}