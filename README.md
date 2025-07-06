# Solidity To-Do List: A Best-Practice Smart Contract

This is a simple project that implements a To-Do List smart contract on the Ethereum blockchain. The contract is written in Solidity and adheres to industry best practices regarding security, gas efficiency, and code readability.

## Key Features

-   **Create Tasks**: Add new tasks to the list.
-   **Toggle Status**: Mark tasks as completed or incomplete (`toggleCompleted`).
-   **Update Content**: Edit the text of an existing task.
-   **Delete Tasks**: Efficiently remove tasks from the list.
-   **View Tasks**: Retrieve details for a single task or all active tasks.
-   **Access Control**: Only the contract owner can modify the to-do list.

## Tech Stack

-   **Solidity**: `^0.8.20`
-   **Hardhat**: Ethereum development and testing environment.

## Prerequisites

Please ensure you have the following software installed on your system:
-   [Node.js](https://nodejs.org/) (v18.x or higher)
-   npm or yarn

## Installation and Setup

1.  **Clone this repository:**
    ```bash
    git clone [YOUR_REPOSITORY_URL]
    ```

2.  **Navigate to the project directory:**
    ```bash
    cd [PROJECT_FOLDER_NAME]
    ```

3.  **Install all required dependencies:**
    ```bash
    npm install
    ```

## Basic Commands (Hardhat)

Here are some common commands used for developing this project.

-   **Compile the Smart Contract:**
    This command compiles your `.sol` files and generates ABI files in the `artifacts` directory.
    ```bash
    npx hardhat compile
    ```

-   **Run Tests:**
    This command will execute all test files located in the `test/` directory.
    ```bash
    npx hardhat test
    ```

-   **Deploy to a Local Network:**
    To deploy the contract to a local Hardhat network, run the following command in a separate terminal:
    ```bash
    npx hardhat node
    ```
    Then, run the deployment script in another terminal:
    ```bash
    npx hardhat run scripts/deploy.js --network localhost
    ```

## Contract Structure

-   `contracts/ToDoList.sol`: The main file containing the ToDoList smart contract logic.
-   `test/ToDoList.test.js`: Contains unit tests to ensure all functions work as expected.
-   `scripts/deploy.js`: A simple script to deploy the contract to a network.
-   `hardhat.config.js`: The configuration file for the Hardhat project.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---
**Author:** rasyrichie
