# Project Title : Secure Contract Management: Implementing require, assert, and revert in Solidity.

## Discription :
Solidity's ErrorHandling smart contract uses require(), assert(), and revert() statements to implement robust error handling for fund management. This contract ensures only the deployer (owner) can deposit, withdraw, perform emergency withdrawals, and reset the contract's balance. It uses these mechanisms to maintain consistency and prevent errors, with built-in checks and validations to ensure the correctness of the contract's operations.

## Key Features : 

> State Variables :

i. address public me: Stores the address of the contract deployer (owner).

ii. uint public balance: Tracks the balance within the contract.

> Constructor

i. constructor(): Initializes the me variable with the address of the deployer and sets the initial balance to zero, 
ensuring the contract is prepared for its operations from a known state.

> Functions :

## deposit(uint amount)

Purpose: Allows the owner to deposit funds into the contract.

> Error Handling:

i. Uses require() to verify that the caller is the owner.

ii. Uses require() to ensure the deposit amount is greater than zero.

Behavior: Increases the balance by the specified amount.

## withdraw(uint amount)

Purpose: Allows the owner to withdraw a specified amount of funds from the contract.

> Error Handling:

i. Uses require() to ensure the caller is the owner.

ii. Uses require() to ensure the withdrawal amount does not exceed the current balance.

iii. Uses assert() to confirm that the balance remains non-negative after the withdrawal.

Behavior: Decreases the balance by the specified amount.

## emergencyWithdraw(uint amount)

Purpose: Allows the owner to perform an emergency withdrawal.

> Error Handling:

i. Uses require() to verify that the caller is the owner.

ii. Uses revert() to abort the transaction with a custom error message if the requested amount exceeds the available balance.

Behavior: Decreases the balance by the specified amount if sufficient funds are available.

<> reset()

Purpose: Resets the contract's balance to zero.

> Error Handling:

Uses require() to ensure the caller is the owner.

Behavior: Sets the balance to zero directly, allowing the balance to be reset under any condition.

<> getBalance()

Purpose: Provides the current balance of the contract.

Behavior: Returns the value of the balance for viewing purposes.

## Error Handling Mechanisms :

1. require():

       Used to enforce conditions that must be true before executing function logic.

       Ensures only the owner can call certain functions (deposit, withdraw, emergencyWithdraw, reset).

       Validates input conditions, such as a positive deposit amount and sufficient funds for withdrawal.

2. assert():

       Used to check for internal invariants.
   
       Verifies that the balance is non-negative after a withdrawal, confirming no logical errors in balance calculations.
   
3. revert():

       Used to explicitly abort a transaction with a specific error message.
   
       Provides custom error messages in emergencyWithdraw when the requested withdrawal amount exceeds the available balance.


# Starting Execution :
A Solidity smart contract may be constructed and interacted with through a sequence of stages using Remix. Using the Remix IDE to compile and
deploy your ErrorHandling smart contract is made easy with the following step-by-step instructions:

## Step-by-Step Guide to Using Remix IDE

1. Access Remix IDE
   
     > Open Remix: Go to the link (https://remix.ethereum.org/) in your web browser.

2. Create a New File

    > Navigate to File Explorer: Click on the File Explorer icon on the left panel.
    
    > Create a New File: Click on the New File icon .
   
    > Name the File: Enter a name for your Solidity file (projectcode.sol) and press Enter.
    
3. Write or Paste Your Contract Code

   > Open the File: Click on the newly created file to open the editor.

   > Paste the Code: Copy the following ErrorHandling contract code ().

4. Compile the Contract

    > Navigate to the Solidity Compiler: Click on the Solidity Compiler icon on the left panel .
    
    > Select the Compiler Version: Ensure the compiler version is set to a version compatible with your contract (pragma solidity ^0.8.9 ).
 
    > Compile the Contract: Click the Compile projectcode.sol button. If there are no errors, the contract will compile successfully.
    
5. Deploy the Contract

   > Navigate to Deploy & Run Transactions: Click on the Deploy & Run Transactions icon on the left panel .
   
   > Select the Environment: Choose the environment for deployment [Remix VM(London)] for a local test environment.
   
   > Deploy: In the Deploy section, ensure ErrorHandling is selected. Click the Deploy button.
   
6. Interact with the Deployed Contract

   > Access the Contract Interface: Once deployed, see contract under the Deployed Contracts section.

   > Expand the Contract: Click on the contract instance to see available functions.

7. Execute Functions
   
   i. Deposit Funds:

      > Function: deposit

      > Input: Enter an amount click transact.

   ii. Withdraw Funds:

     > Function: withdraw

     > Input: Enter an amount to withdraw, click transact.

   iii. Emergency Withdraw:

      > Function: emergencyWithdraw

     > Input: Enter an amount for emergency withdrawal, click transact.

   iv. Reset Balance:

     > Function: reset

     > Click: Click transact to reset the balance to zero.

   v. Check Balance:

     > Function: getBalance

     > Click: Click call to see the current balance.

8. Monitor Transactions

    > Check Transaction Results: Monitor the Remix console (bottom of the interface) for transaction details and confirmations.
    
9. Test Scenarios

   > Verify Access Control: Attempt operations from a different address to ensure non-owners cannot perform owner-only actions.
   > Handle Errors: Test error conditions such as withdrawing more than the balance to see how the contract handles these scenarios.

# Authers : 
   > Sourov Kumar Nandi
   > Github : https://github.com/Sourov2002t
   > LinkeIn : https://www.linkedin.com/in/sourov-kumar-nandi-77292924b

# License :
 This project is licensed under the MIT License - see the link ( https://github.com/Sourov2002t/ErrorHandling/blob/main/LICENSE ) for details.
