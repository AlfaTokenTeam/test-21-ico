pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Test21 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Test21(address _owner)  UpgradeableToken(_owner) {
    name = "Test21";
    symbol = "test";
    totalSupply = 10000;
    decimals = 1;

    balances[_owner] = totalSupply;
  }
}