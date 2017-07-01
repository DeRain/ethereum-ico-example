pragma solidity ^0.4.11;

import './zeppelin/token/StandardToken.sol';

/** @title Smart token based on ERC20 token from OpenZeppelin framework */
contract SmartCoin is StandardToken {
    string public constant symbol = "SMART";
    string public constant name = "Smart Coin";
    uint256 _totalSupply = 1000000000;

    /**
     * @dev Shows 3 decimals in Mist Ethereum wallet. You will see 0.001 SMART for 1 token.
     */
    uint8 public constant decimals = 3;

    function SmartCoin() {
        //Send all tokens to contract creator
        balances[msg.sender] = _totalSupply;
    }
}
