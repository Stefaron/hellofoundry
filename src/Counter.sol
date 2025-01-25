// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    uint256 public price;
    address public owner;


    constructor() {
        owner = msg.sender;
        price = 100;
    }

    function setPrice(uint256 newPrice) public {
        require(msg.sender == owner, "Onlt owner can set price");
        price = newPrice;
    }
    

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function setOwner(uint256 newOwner) public{
        require(msg.sender == owner, "Only owner can set");
        owner = newOwner;
    }

    function increment() public {
        number++;
    }

}
