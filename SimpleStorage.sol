// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{

// ths will intialize favorite number
    uint256 public favoriteNumber;
    People[] public people;
    mapping(string => uint256) public nametofav;


//create a structre with name and number as people
    struct People{
        uint256 favoriteNumber;
        string  name;
    }
    
//function public to add data to blockchain 
    function addPerson(string memory _name, uint256 _favoriteNumber)public {
        people.push(People(_favoriteNumber, _name));
        nametofav[_name]=_favoriteNumber;
    }
    

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;

    }
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}
