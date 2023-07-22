// getting started with solidity assignment

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Bug {
    string public tokenName = "Wizard";
    string public abbrv = "WIZ";
    uint public totalSupply = 0;
    mapping (address => uint) balance;

    function mint(address _address, uint value ) public{
        totalSupply +=value;
        balance[_address] += value;
    }


    function burn(address _address , uint value) public{
        require(balance[_address] >= value,"insufficient funds");
        totalSupply -=value;
        balance[_address] -= value;
    }
}