// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleWrapAround {
    uint public myage;

    function incAge()  public  {
        myage += 1;
    }

    function decAge() public {
        myage -= 1;
    }
}