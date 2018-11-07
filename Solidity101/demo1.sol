pragma solidity ^0.4.19;

contract ZombieFactory
{
    // some structs: represents abstractions of objects from
    // real life
    struct Zombie
    {
        string name;
        uint dna;
    }

    struct Person
    {
        string name;
        string country;
    }

    // creating variables
    uint dnaDigits = 16;
    // power operation
    uint dnaModulus = 10 ** dnaDigits;

    // arrays
    uint[2] fixedArray;
    string[5] stringArray;
}
contract SpaceDoggos {

    // Write your solution below
    bool myBoolean = true;
    //integers: from 8 up to 256 from steps of 8
    int8 eight = 23;
    int16 sixteen = 52;
    int256 twiity = 26326432632; // this is same as int

    uint8 eig = 32;
    uint16 ss = 32;
    uint256 hund = 5222; // same as uint

    // tasks
    uint maxPlanetsPerSystem = 10;
    uint minPlanetsPerSystem = 3;
    uint planetCodeDigits = 7;
    uint systemCodeDigits = 7;

    
}