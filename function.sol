// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionExample {
    uint private value;

    // View function: Does not modify the state variables, can read from state variables.
    function getValue() public view returns (uint) {
        return value;
    }

    // Pure function: Does not read or modify the state variables.
    function multiply(uint _number) public pure returns (uint) {
        return _number * 2;
    }

    // Payable function: Can receive Ether along with function invocation.
    function receiveEther() public payable {
        // Perform some actions or just receive Ether.
    }
}

contract DerivedFunctionExample is FunctionExample {
    uint private newValue;

    function getNewValue() public view returns (uint) {
        // Accessing the view function from the parent contract.
        return getValue() + newValue;
    }

    function multiplyNew(uint _number) public pure returns (uint) {
        // Accessing the pure function from the parent contract.
        return multiply(_number) + 5;
    }

    function receiveEtherNew() public payable {
        // Accessing the payable function from the parent contract.
        // Additional actions can be performed here if needed.
        // This contract can also receive Ether directly.
    }
}
