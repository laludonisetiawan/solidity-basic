// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    // variable untuk menyimpan data bertipe uint (positif integer)
    uint storedData;

    // Fungsi untuk mengatur nilai storedData
   // Fungsi ini bisa diakses oleh siapa saja dan mengubah nilai storedData menjadi nilai baru (x)
    function set(uint x) public {
        storedData = x;
    }

    // Fungsi untuk mendapatkan nilai storedData
   // Fungsi ini dapat diakses oleh siapa saja dan mengembalikan nilai storedData saat ini

   function get() public view returns (uint) {
       return storedData;
   }
}