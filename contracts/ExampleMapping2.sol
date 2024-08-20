// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMapping2{

    mapping(address => uint) public  receivedData;

    function sendMoney() public payable{
        receivedData[msg.sender] = msg.value; 
    }

    function getBalance() view public  returns (uint){
        return address(this).balance;
    }

    function withdrawAllMoney(address payable _to) public {
        uint balanceToSendOut = receivedData[msg.sender];
        receivedData[msg.sender] = 0;
        _to.transfer(balanceToSendOut);
    }  

}