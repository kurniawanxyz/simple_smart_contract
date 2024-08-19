// SPDX-License-Identifier: MIT
pragma solidity  0.8.14;

contract ExampleAddress{
    address public someAddress;

    function setAddress(address _address) public 
    {
        someAddress = _address;
    }

    function getAddressBellance() public  view  returns (uint){
        return someAddress.balance;
    }
}