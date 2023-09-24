//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TodoList {
    uint taskCount = 0;

    //make a function
    function createTask() public {
        taskCount++;
    }
}
