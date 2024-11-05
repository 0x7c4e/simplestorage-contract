
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// import the simplestorage contract

// default import
// import "SimpleStorage.sol";
// named import 
import {SimpleStorage} from "SimpleStorage.sol";

contract StorageFatory {
    // type visibility name
    // a contract is a type
    SimpleStorage[] public listOfSimpleStorageContracts;

    // function to create a new simplestorage, 
    function createSimpleStorageContract() public  {
        // the 'new' keyword tells solidity to deploy a contract.
        SimpleStorage newSimpleStorageContract = new  SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public  {
        //to interact with an external contract we need it's address and ABI(application binary interface)

        // get the simplestorage contract to interact with
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    // function to get the simple storage item at given index
    function sfGet(uint256 _simpleStorageindex) public  view  returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageindex].retrieve();
    }
}