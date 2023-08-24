// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MarketPlace {
    address public owner; // Alamat pemilik kontrak 
    mapping(address => uint) public balances; // Mapping untuk menyimpan saldo pengguna

    constructor() {
        owner = msg.sender; // Inisialisasi pemilik kontak dengan alamat pengirim transaksi saat deployment
    }

    // Fungsi untuk menyetor Ether ke dalam kontrak 
    function deposit() public payable {
        balances[msg.sender] += msg.value; // Menambahkan nilai Ether yang didepositkan ke saldo pengguna
    }

    // Fungsi view untuk melihat saldo Ether pengguna di kontrak
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    // FUngsi pure untuk melakukan penambahan matematis pada dua angka
    function add(uint a, uint b) public pure returns(uint) {
        return a+b; // Mengembalikan hasil penambahan dari dua angka yang diberikan 
    }
}