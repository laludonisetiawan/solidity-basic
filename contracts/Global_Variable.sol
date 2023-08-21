// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract GlobalVariable {
    // global variable
    uint256 public counter;

    constructor() {
       counter = 0;
    }

    // menambah nilai baru ke counter
    function increment(uint256 value) public {
        counter += value;
    } 

    // mendapatkan hasil 
    function getHasil() public view returns (uint256) {
        return counter; // mengakses global variable
    }
}




