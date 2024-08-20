// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleStruck{
    struct PaymendReceivedStruck {
        address  from;
        uint amount;
    }

    PaymendReceivedStruck public payment;

    function payContract() public payable  {
        payment = PaymendReceivedStruck(msg.sender, msg.value);
    }

    function withdrawAllBalance() public payable {
        address payable to = payable(payment.from);
        to.transfer(address(this).balance);
    }

}