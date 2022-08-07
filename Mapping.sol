// Mapping
// Maps are created with the syntax mapping(keyType => valueType).
// The keyType can be any built-in value type, bytes, string, or any contract.
// valueType can be any type including another mapping or an array.
// Mappings are not iterable.



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping{
    // Mapping from address to uint
    mapping(address => uint) public myMap;
    function get(address _addr) public view returns (uint){
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }
}
