// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleExceptionRequire {
    mapping(address => uint) public  balanceReceived;

    function receivedMoney() public payable {
        require(msg.value != 0, "Saldo anda tidak boleh kosong");
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public
    {   
        require(_amount >= balanceReceived[msg.sender], "Saldo anda kurang");        
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}