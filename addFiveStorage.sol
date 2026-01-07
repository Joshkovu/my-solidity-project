// SPDX-License-Identifier:MIT

pragma solidity ^ 0.8.19;
import {SimpleStorage} from "./simpleStorage.sol";

contract addFiveStorage is SimpleStorage {
  // +5
  //overrides
  //virtual override
  function store(uint256 _newnumber) public override {

  }
}