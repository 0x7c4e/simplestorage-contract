// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //declare solidity version

// initialize a contract, think of contract as classes
contract SimpleStorage {
    // if no value is passed to a variable at initialization, it returns the default value of it's data type.

    uint256 myFavoriteNumber;

    // ARRAY syntax
    // uint256[] listOffavoriteNumbers;

    // you can create your own types in solidity using the struct keyword
    // we create a new type of person in which case each person of this type will have a name and a fav number
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // DYNAMIC AND STATIC ARRAYS
    // dynamic arrays can be expanded and take in more values [], static arrays can only take in as much as isspecified in the declaration. [3]
    Person[] public listOfPeople;

    // MAPPING
    // mappings are key-value pairs for storing data
    // here we create a mapping where the key is a string that points to a uint256, followed by the visibility of the map and its name
    // the default values of a mapping's key is 0
    mapping(string => uint256) public nameToFavoriteNumber;


    // Person public sage = Person({
    //     favoriteNumber: 7,
    //     name: "Sage"
    // });

    // FUNCTIONS
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // GETTER FUNCTION
    // using the 'view' keyword here indicates that this function isn't meant to run or execute a transaction (any action that updates the state of the blockchain).
    // it simply 'views' or 'reads' data from the blockchain
    // the returns keyword specifies what type of value the function will give when called.
    function retrieve() public  view  returns(uint256) {
        return  myFavoriteNumber;
    }

    // function to add people to the list
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person( _favoriteNumber, _name));
        // add a person to te map
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    
}