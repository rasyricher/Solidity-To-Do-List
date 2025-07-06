// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/access/Ownable.sol";

/**
* @title ToDoList
* @dev A simple smart contract to manage a task list.
*/

contract ToDoList is Ownable {
    // ---- State Variables ----
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    uint public taskCount;
    mapping(uint => Task) public tasks;

     // ---- Constructor ----
    constructor() Ownable(msg.sender) {}

    // ---- Events ----
    event TaskCreated(uint indexed id, string content);
    event TaskContentUpdated(uint indexed id, string newContent);
    event TaskCompleted(uint indexed id, bool completed);
    event TaskDeleted(uint indexed  id);

     // ---- Functions ----
     
    /*** @notice Create a new task.
    * @dev Can only be called by the owner. Task ID will increment automatically.
    * @param _content The content of the task to be created. Using `calldata` for gas efficiency.*/
    function createTask(string calldata _content) external onlyOwner {
        require(bytes(_content).length > 0, "ToDoList : Content cannot be empty");

        taskCount++;
        uint newTaskId = taskCount;
        tasks[newTaskId] = Task(newTaskId, _content, false);
        emit TaskCreated(newTaskId, _content);
    }

    /** * @notice Change the content/text of a task. 
    * @dev Can only be called by the owner. Requires a valid task ID. 
    * @param _id ID of the task to be changed. 
    * @param _newContent New content for the task. */
    function updateTask(uint _id, string calldata _newContent) external onlyOwner {
        require(bytes(_newContent).length > 0, "ToDoList : Content cannot be empty");
        require(tasks[_id].id != 0, "ToDoList : Task doesnt exist");

        tasks[_id].content = _newContent;
        emit TaskContentUpdated(_id, _newContent);
    }

    /*** @notice Change the `completed` status of a task (from completed to not completed or vice versa).
    * @dev Can only be called by the owner. Requires a valid task ID.
    * @param _id The ID of the task whose status will be changed.*/
    function toggleCompleted(uint _id) external onlyOwner {
        require(tasks[_id].id != 0, "ToDoList : Task doesnt exist");
        
        Task storage taskToToogle = tasks[_id];
        taskToToogle.completed = !taskToToogle.completed;
        emit TaskCompleted(_id, taskToToogle.completed);
    }

    /*** @notice Removes a task from the list.
    * @dev Can only be called by the owner. Removing data from mapping will refund gas.
    * @param _id The ID of the task to be removed.*/
    function deleteTask(uint _id) external onlyOwner {
        require(tasks[_id].id != 0, "ToDoList : Task doesnt exist");
        
        delete tasks[_id];
        emit TaskDeleted(_id);
    }

    /** @notice Retrieves task details based on ID.
    * @dev The `view` function does not change state and does not require gas fees when called off-chain.
    * @param _id The ID of the task to be viewed.
    * @return id The task ID.
    * @return content The task content.
    * @return completed The completion status of the task.*/
    function getTask(uint _id) external view onlyOwner returns(uint, string memory, bool) {
        require(tasks[_id].id != 0, "ToDoList : Task doesnt exist");

        Task storage _task = tasks[_id];
        return (_task.id, _task.content, _task.completed);
    }

    /*** @notice Retrieve all tasks that are still active (not deleted).
    * @dev This is a 'view' function that does not consume gas if called off-chain.
    * However, it can be costly if called on-chain (from another contract) if the number of tasks is very large.
    * @return allTasks An array containing all active Task structs.*/
    function getAllTasks() external view onlyOwner returns(Task[] memory) {
       uint activeTaskCount = 0;
        for(uint i = 1; i <= taskCount; i++) {
            if(tasks[i].id != 0) {
                activeTaskCount++;
            }
        }

        if(activeTaskCount == 0) {
            return new Task[](0);
        }

        Task[] memory allTasks = new Task[](activeTaskCount);
        uint currentIndex = 0;
        for(uint i = 1; i <= taskCount; i++) {
             if(tasks[i].id != 0) {
                allTasks[currentIndex] = tasks[i];
                currentIndex++;
             }
        }
        return allTasks;
    }
}