
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "SimpleStorage.sol";

// using the 'is' keyword to indicate that addfive storage is inheriting from simplestorage

contract AddFiveStorage is SimpleStorage {
   // to be able to add 5 to whatever numbers users store, we need to override the store function
   function store(uint256 _newNumber) public override {
    // since we are inheriting the simplestorage contrac here, we have access to its variables too.
    myFavoriteNumber = _newNumber+5;
   }
}