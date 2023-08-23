// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ArrayReplaceFromEnd {
    uint[] public arr;
    /*
    menghapus sebuah elemen menciptakan celah dalam array.
    trik untuk menjaga array tetap kompak adalah dengan memindahkan elemen
    terakhir ke posisi yang ingin di hapus.
    */

    function remove(uint index) public {
        // memindahkan elemen terakhir ke posisi yang ingin dihapus
        arr[index] = arr[arr.length - 1];
        // menghapus elemen terakhir
        arr.pop();
    }

    // fungsi untuk melakukan pengujian
    function test() public {
        arr = [1, 2, 3, 4];
        // memanggil fungsi remove dengan index 1
        remove(1);
        //hasil setelah remove: [1,4,3]
        assert(arr.length == 3); // Memastikan panjang array sesuai
        assert(arr[0] == 1); // Memastikan elemen 0 masih ada
        assert(arr[1] == 4); // Memastikan elemen 1 adalah hasil dari pergeseran
        assert(arr[2] == 3); // Memastikan elemen 2 masih ada

        // memanggil fungsi remove dengan index 2
        remove(2);
        // hasil setelah remove: [1,4]
        assert(arr.length == 2); // Memastikan panjang array sesuai
        assert(arr[0] == 1); // Memastikan elemen 0 masih ada
        assert(arr[1] == 4); // Memastikan elemen 1 masih ada
    }
}