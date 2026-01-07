// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19 ; // stating our version 

contract SimpleStorage {
    
    uint256  num ; // gives 0 if no number is given

    // uint [] listOfFavoriteNumbers; 
    struct Person {
        uint256 favoriteNumber;
        string name ;
    } 
 Person[] public listofPeople ; //array
 mapping (string => uint256) public nameToFavoriteNumber; // mapping
 function addPerson(string memory _name, uint256 _favoriteNumber)public{
    
 listofPeople.push(Person(_favoriteNumber,_name));
 nameToFavoriteNumber[_name] = _favoriteNumber;
 }
    // Person public pat = Person({favoriteNumber:7,name:"pat"});
    // Person public mariah = Person({favoriteNumber:7,name:"pat"});
    // Person public john = Person({favoriteNumber:7,name:"pat"});
    // Person public myFriend = Person({favoriteNumber:7,name:"pat"});

    function store(uint256 _favoriteNumber) public virtual{
    num = _favoriteNumber ;
    
    }
function retrieve() public view returns (uint256){
    return num;
}
}
