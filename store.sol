// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageAndMemory {
    uint256 public storedValue; // Storage variable

    function setValue(uint256 _newValue) external {
        storedValue = _newValue; // Modifying the storage variable directly
    }

    function getValue() external pure returns (uint256) {
        uint256 memoryValue = 100; // Memory variable
        return memoryValue; // Returning the memory variable
    }
}
