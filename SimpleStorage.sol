// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint myFavoriteNumber;

    struct Person {
        uint favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping (string => uint) public nameToFavoriteNumber;

    function store(uint _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    
}