var TodoList = artifacts.require("../contracts/ToDoList.sol");

module.exports = function(deployer) {
  deployer.deploy(TodoList);
};