// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract ExampleViewPure {
    uint public myStorageVariable;

    function getMyStorage() public view returns(uint) {
        //Can access storage variable (outside scope) but can't write them
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint) {
        //Can only call not storage variables or other pure functions
        return a+b;
    }

    function setMyStorageVariable(uint _newVar) public returns (uint) {
        myStorageVariable = _newVar;
        return _newVar;
    }
}