// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract KhairanCoins {
    function name() public pure returns (string memory) { 
        // coins name
        return 'Khairan Coins';
    }

    // coins official symbol
    function symbol() public pure returns (string memory) {
        return '$KRC';
    }

    // coins decimals
    function decimals() public pure returns (uint8) {
        return 0;
    }

    // get total $KRC total supply
    function totalSupply() public pure returns (uint256) { 
        // amount of coins in existence
        return 1000000000;
    }

    // get coins owners balance
    function balanceOf(address _owner) public  view returns (uint256 balance) {

    }

    // transfer coins to another users
    function tranfer(address _to, uint256 _value) public  returns (bool success) {

    }

    // transfer from an address to another
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {

    }

    // approve transaction by the owner
    function approve(address _spender, uint256 _value) public  returns (bool success){

    }

    // allowance
    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {

    }

}
