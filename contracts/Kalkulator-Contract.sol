// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Kalkulator {
    uint256 hasil = 0; // variable untuk menyimpan nilai perhitungan

    function tambah(uint256 num) public  {
        hasil += num; // menambahkan nilai num ke dalam hasil
    }

    function kurang(uint256 num ) public {
        hasil -= num; // mengurangi nilai num dari hasil
    } 

    function kali(uint256 num) public  {
        hasil *= num; // mengalikan hasil dengan nilai num  

    }

    function dapatkanHasil() public view returns(uint256){
        return hasil; // mengembalikan nilai hasil 
    } 
}