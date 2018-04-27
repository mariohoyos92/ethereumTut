pragma solidity ^0.4.18;

contract Coursetro {
    
    string public name;
    uint public age;
    
    function setInstructor(string _fName, uint _age ) public {
        name = _fName;
        age = _age;
    }
    
    function getInstructor() public constant returns (string, uint) {
        return (name, age);
    }
}