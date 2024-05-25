//SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract ExampleWrapAraund {
    uint256 public myUint; //0 - (2^256)-1

    uint8 public myUint8 = 250;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        unchecked {
            myUint--;
        }
    }

    function incrementUint8() public {
        myUint8++;
    }
}