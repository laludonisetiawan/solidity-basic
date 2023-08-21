// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SolidityTest {
   uint storedData; // State variable
   constructor() {
      storedData = 10;  // using state variable 
   }

   function getResult() public view returns (uint) {
       return storedData;
   }
}