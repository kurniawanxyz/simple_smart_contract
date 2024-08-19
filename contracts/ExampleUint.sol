// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleUint {
    uint public myage;

    function incAge()  public  {
        myage += 1;
    }

    function decAge() public {
        myage -= 1;
    }
}