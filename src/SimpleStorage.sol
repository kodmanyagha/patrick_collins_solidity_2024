// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 public favoriteNumber;
    uint256[] favoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person public pat = Person(10, "Pat");
    Person public john = Person({favoriteNumber: 20, name: "John"});

    Person[] public persons;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        persons.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function emptyYelloFn() public {
        //
    }
}
