// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Error {
    // Fungsi untuk menguji require
    function testRequire(uint _i) public pure {
        // Require digunakan untuk memvalidasi kondisi sebelum eksekusi.
        // Contoh penggunaan: memastikan input atau kondisi sesuai harapan
        require(_i > 10, "Input harus lebih dari 10 !");
    }

    // Fungsi untuk menguji revert
    function testRevert(uint _i) public pure {
        // Revert berguna ketika kondisi yang diperiksa kompleks.
        // Kode ini melakukan hal yang sama seperti contoh di atas
        if (_i <= 10) {
            revert("Input harus lebih besar dari 10");
        }
    }

    uint public num;

    // Fungsi untuk menguji Assert 
    function testAssert() public view {
        // Assert hanya digunakan untuk pengujian kesalahan internal dan invariant
        // Disini kita asumsikan bahwa nilai num selalu sama dengan 0
        assert(num == 0);
    }

     // Custum Error
    error InsufficientBalance(uint balance, uint withdrawAmount);
    
    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            // Menggunakan custom error jika kondisi tidak terpenuhi 
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount });
        }
    }
}