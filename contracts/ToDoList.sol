//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id; //unsigned integer
        string content;
        bool completed;
    }

    constructor() {
        createTask("First task: WIN HACKATHON");
    }

    event TaskCreated(uint id, string content, bool completed);
    event TaskCompleted(uint id, bool completed);

    mapping(uint => Task) public tasks; // creates key-value pairs that get stored on the blockchain

    function createTask(string memory _content) public {
        //context will be the text of the task
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false); //new struct
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}
