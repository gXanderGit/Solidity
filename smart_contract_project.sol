// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionContract {
    address public owner;
    uint256 public someValue;

    constructor() {
        owner = msg.sender;
    }

    function setSomeValue(uint256 _newValue) external {
        require(msg.sender == owner, "Only the owner can set the value");
        assert(_newValue != 0);
        someValue = _newValue;
    }

    function unsafeSetSomeValue(uint256 _newValue) external {
        require(msg.sender == owner, "Only the owner can set the value");
        if (_newValue == 0) {
            revert("Cannot set value to zero");
        }
        someValue = _newValue;
    }
}
