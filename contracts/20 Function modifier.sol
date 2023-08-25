// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract FunctionModifier {
    address public owner;
    uint public x = 10;
    bool public locked;

    // Mengatur pengirim sebagai pemilik kontrak
    constructor() {
        owner = msg.sender;
    }

    /*
    Modifier untuk memeriksa apakah panggil pemilik
    dari kontrak
    */
    modifier onlyOwner(){
        require(msg.sender == owner, "Bukan Pemilik");
        /*
        garis bawah _; adalah karakter khusus hanya digunakan dalam
        modifier fungsi dan memberi tahu solidity untuk
        menjalankan sisa kode 
        */
        _;
    }

    // Modifier dapat mengambil argumen. Modifier ini memeriksa apakah
    // alamat yang diberikan bukan alamat nol.
    modifier validateAddress(address _addr) {
        require(_addr != address(0), "Alamat tidak valid");
        _;
    }

    function changeOwner(address _newOnwer) public onlyOwner validateAddress(_newOnwer) {
        owner = _newOnwer;
    }

    // Modifier ini mencegah function dipanggil saat fungsi ini masih berlajan 
    modifier noReenrancy() {
        require(!locked, "Tidak boleh reentrasi");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i ) public noReenrancy{
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}