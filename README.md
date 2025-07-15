# Solidity To-Do List

This is a simple project that implements a To-Do List smart contract on the Ethereum blockchain. The contract is written in Solidity and adheres to industry best practices regarding security, gas efficiency, and code readability.

## Key Features

-   **Create Tasks**: Add new tasks to the list.
-   **Toggle Status**: Mark tasks as completed or incomplete (`toggleCompleted`).
-   **Update Content**: Edit the text of an existing task.
-   **Delete Tasks**: Efficiently remove tasks from the list.
-   **View Tasks**: Retrieve details for a single task or all active tasks.
-   **Access Control**: Only the contract owner can modify the to-do list.

## Technology Used

-   **Solidity**: `^0.8.20`
-   **Remix IDE**: A browser-based IDE for Ethereum smart contract development.

## Getting Started with Remix IDE

You can compile, deploy, and interact with this smart contract directly in your web browser using Remix IDE. No local installation is required.

### Step 1: Setup the Contract

1.  Open Remix IDE in your browser: [https://remix.ethereum.org/](https://remix.ethereum.org/)
2.  In the "File Explorers" panel on the left, create a new file named `ToDoList.sol`.
3.  Copy and paste the entire code from this project's `ToDoList.sol` file into the new file you just created in Remix.

### Step 2: Compile the Contract

1.  Navigate to the **"Solidity Compiler"** tab on the left sidebar (it has an 'S' logo).
2.  Select a compiler version that is compatible with the pragma (e.g., `0.8.20` or any other version in the `0.8.x` range).
3.  Click the **"Compile ToDoList.sol"** button. You should see a green checkmark on the sidebar icon upon success.

### Step 3: Deploy the Contract

1.  Navigate to the **"Deploy & Run Transactions"** tab on the sidebar (it has an Ethereum logo).
2.  In the **"ENVIRONMENT"** dropdown, select **"Remix VM (London)"** or any other Remix VM. This provides a safe, in-memory blockchain for testing that doesn't cost real money.
3.  Ensure your contract, `ToDoList - ToDoList.sol`, is selected in the "CONTRACT" dropdown.
4.  Click the orange **"Deploy"** button.

### Step 4: Interact with the Contract

1.  After successful deployment, a new contract instance will appear under the **"Deployed Contracts"** section at the bottom of the sidebar.
2.  Click the small triangle next to the contract name to expand its functions.
3.  You can now use the provided buttons to interact with your contract:
    -   **Blue Buttons (View/Pure functions):** For functions like `owner`, `taskCount`, `getTask`, or `getAllTasks`, simply click the button to view the output instantly without a transaction.
    -   **Orange Buttons (State-changing functions):** For functions like `createTask`, enter the required information (e.g., `"Learn Remix"` for the `_content` parameter) into the input field and click the button to execute a transaction.

## License

This project is licensed under the MIT License.
