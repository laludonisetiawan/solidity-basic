// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract LokalVariable {
    function Hasil() public pure returns (uint) {
      uint a = 1; // lokal variable
      uint b = 2 ;
      uint jumlah = a + b;
      return jumlah; // mengakses variable di lokal
    }
}