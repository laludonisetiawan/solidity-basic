// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Kontrak dasar X dengan constructor menerima parameter _name.
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name; // Inisialisasi variabel 'name' dengan nilai dari parameter _name.
    }
}

// Kontrak dasar Y dengan constructor menerima parameter _text.
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text; // Inisialisasi variabel 'text' dengan nilai dari parameter _text.
    }
}

// Ada 2 cara untuk menginisialisasi kontrak anak dengan parameter.

// Kontrak B mewarisi X dan Y, dengan constructor langsung menyediakan argumen.
contract B is X("Input ke X"), Y("Input ke Y") {

}

// Kontrak C mewarisi X dan Y, dengan constructor sendiri untuk menginisialisasi parameter.
contract C is X, Y {
    // Constructor kontrak C menerima parameter _name dan _text untuk kontrak X dan Y.
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// Urutan constructor dipanggil sesuai urutan pewarisan, terlepas dari urutan dalam kontrak anak.

// Kontrak D mewarisi X dan Y, constructor kontrak D memanggil constructor X dan Y dengan parameter.
contract D is X, Y {
    constructor() X("X dipanggil") Y("Y dipanggil") {}
}

// Kontrak E mewarisi X dan Y, constructor kontrak E memanggil constructor Y dan X dengan parameter.
contract E is X, Y {
    constructor() Y("Y dipanggil") X("X dipanggil") {}
}
