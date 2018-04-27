pragma solidity ^0.4.18;

contract Coursetro {
    
    string fName;
    uint age;
    address owner;
    
    event Instructor(
       string name,
       uint age
    );
    
    function setInstructor(string _fName, uint _age) public {
       fName = _fName;
       age = _age;
       Instructor(_fName, _age);
    }
    
    function getInstructor() view public returns (string, uint) {
       return (fName, age);
    }

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
   
}