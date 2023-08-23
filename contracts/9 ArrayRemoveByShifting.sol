// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ArrayRemoveByShifting {
    uint [] public arr;
    // fungsi untuk mengapus element array pada index dengan cara menggeser element lainnya
    function remove (uint _index) public {
        // memeriksa apakah index yang diminta ada dalam rentang yang valid
        require(_index < arr.length, "index diluar batas!"); 

        // menggeser elemen dari index yang dihapus ke belakang
        for(uint i = _index; i < arr.length - 1; i++ ) {
            arr[i] = arr[i + 1];
        }

        // menghapus element terakhir yang sudah terduplikat
        arr.pop();
    }

    // function untuk melakukan pengujian
    function test() external {
        // inisialisasi array
        arr = [1, 2, 3, 4, 5, 6];

        // memanggil fungsi remove dengan index 2
        remove(2);

        // Hasil setelah remove [1, 2, 4, 5, 6];
        assert(arr[0] == 1); // memastikan element 1 masih ada
        assert(arr[1] == 2); // memastikan element 2 masih ada
        assert(arr[2] == 4); // memastikan element 4 sudah digeser
        assert(arr[3] == 5); // memastikan element 5 masih ada
        assert(arr[4] == 6); // memastikan element 6 masih ada

        // inisialisasi array baru dengan satu element
        arr=[1];

        // memanggil fungsi remove dengan index 0 
        remove(0);
        // hasil setelah remove: []
        assert(arr.length == 0); // memastikan array kosong

    }
}