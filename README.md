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
