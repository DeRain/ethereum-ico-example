pragma solidity ^0.4.11;

import './SmartCoin.sol';
import './zeppelin/SafeMath.sol';

contract SmartIco is Pausable, Ownable {
    /* Use library for safe math operations */
    using SafeMath for uint;

    /* the unix timestamp start date of the crowdsale */
    uint public startingTimestamp;

    /* the unix timestamp end date of the crowdsale */
    uint public endingTimestamp;

    /* token to sale */
    SmartCoin public token;

    /**
     * @param _token Address of deployed token
     * @param _startingTimestamp Starting date of the ICO
     * @param _endingTimestamp Ending date of the ICO
     */
    function SmartIco(address _token, uint _startsAt, uint _endsAt)
    {
        if (_startsAt == 0) {
            throw;
        }

        if (_endsAt == 0) {
            throw;
        }

        if (_startsAt >= _endsAt) {
            throw;
        }

        owner = msg.sender;
        token = SmartCoin(_token);
    }


}