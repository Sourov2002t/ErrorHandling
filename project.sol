// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/* write a smart contract that implements the require(), assert() and revert() statements.

Functionality
Contract successfully uses require()
Contract successfully uses assert()
Contract successfully uses revert() statements */

contract ErrorHandling {
    address public me;
    uint public balance;

    // Initialize the owner as the deployer and set balance to zero
    constructor() {
        me = msg.sender;
        balance = 0;
    }

    // Function to deposit an amount, restricted to the owner
    function deposit(uint amount) public {
        require(msg.sender == me, "Deposit failed ");
        require(amount > 0, "Amount must be positive");

        balance += amount;
    }

    // Function to withdraw an amount, ensuring balance remains non-negative
    function withdraw(uint amount) public {
        require(msg.sender == me, "Withdraw failed ");
        require(amount <= balance, "insufficient balance");

        balance -= amount;
        assert(balance >= 0);
    }

    // Function for emergency withdrawal, with a custom error message
    function emergencyWithdraw(uint amount) public {
        require(msg.sender == me, "Emergency withdraw failed ");

        if (amount > balance) {
            revert("not enough balance");
        }

        balance -= amount;
    }

    // Function to reset the contract's balance to zero
    function reset() public {
        require(msg.sender == me, "Reset failed ");
        
        // Directly set the balance to zero, ignoring current balance
        balance = 0;
    }

    // Public view function to get the current balance
    function getBalance() public view returns (uint) {
        return balance;
    }
}

