// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Todo{
    
    struct TodoItem {
        uint id;
        string text;
        bool done;
        uint timestamps;
    }

    mapping (address => TodoItem[]) public todoItems;


    function createTodo(string memory _text) public {
        todoItems[msg.sender].push(TodoItem(todoItems[msg.sender].length + 1, _text, false, block.timestamp));
    }

    function showTodo() view public returns (TodoItem[] memory) 
    {
        return todoItems[msg.sender];
    }


}