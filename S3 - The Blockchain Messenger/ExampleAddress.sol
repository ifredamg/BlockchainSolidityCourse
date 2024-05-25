// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract ExampleAddress {
    address public someAddress;

    function setSomeAddress(address _someAddress) public {
        someAddress = _someAddress;
    }

    function getAddressBalance() public view returns(uint) {
        //1 ETH = 10**18 wei
        return someAddress.balance;
    }
}