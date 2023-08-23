// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Array dengan ukuran tetap, semua element diinisialisai dengan 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    /*
    - solidity dapat mengembalikan seluruh array.
    - namun, fungsi ini sebaiknya dihindari untuk
    - array yang bisa tumbuh tanpa batas panjangnya
    */ 
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // menambahkan elemen ke dalam array
        // ini akan meningkatkan panjang array sebanyak 1.
        arr.push(i);
    }

    function pop() public {
        // menghapus elemen terakhir dari array
        // ini akan mengurangi panjang array sebanyak 1.
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // fungsi delete tidak merubah panjang array
        // ia mengatur nilai pada indeks ek niali default-nya
        // dalam hal ini nilai 0.
        delete arr[index];
    }
}