pragma solidity ^0.4.0;

contract SimpleStorage {
    uint storedData;
    uint someNumber;
    uint anotherNumber;
    string hello;
    uint y;
    function set(uint x) {
        storedData = x;
        someNumber = x + 10;
        hello = "Greetings from Simple Storage";
        anotherNumber = someNumber + 100;
        y = x / 2;
    }

    function get() constant returns (uint) {
        return storedData;
    }
}
