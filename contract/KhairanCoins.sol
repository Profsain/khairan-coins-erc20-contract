// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract KhairanCoins {
    string NAME = "Khairan Coins";
    string SYMBOL = "KRC";

    // events
    event Transfer(address indexed _from, address indexed  _to, uint256 _value);
    event Approval(address indexed _owner, address indexed  _spender, uint256 _value);

    mapping(address => uint) balances;
    address deployer;

    // constructor
    constructor() {
        // update deployer
        deployer = msg.sender;
        balances[deployer] = 1000000 * 1e8;
    }

    function name() public view returns (string memory) { 
        // coins name
        return NAME;
    }

    // coins official symbol
    function symbol() public view returns (string memory) {
        return SYMBOL;
    }

    // coins decimals
    function decimals() public pure returns (uint8) {
        return 8;
    }

    // get total $KRC total supply
    function totalSupply() public pure returns (uint256) { 
        // amount of coins in existence
        return 10000000;
    }

    // get coins owners balance
    function balanceOf(address _owner) public  view returns (uint256 balance) {
        return balances[_owner];
    }

    // transfer coins to another users
    function tranfer(address _to, uint256 _value) public  returns (bool success) {
       assert(balances[msg.sender] > _value);
        balances[msg.sender] = balances[msg.sender] - _value;
        balances[_to] = balances[_to] + _value;
        
        emit Transfer(msg.sender, _to, _value);
        
        return true;
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
