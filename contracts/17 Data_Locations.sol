// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract BUkuKontak {
    struct Kontak {
        string nama;
        string nomerTelepon;
    }



    mapping(address => Kontak) public kontakPengguna;
    function tambahKontak(string memory _nama, string memory _nomerTelepon) public {
        // Mendapatkan referensi ke struktur kontak yang terkait dengan alamat pengguna saat ini
        Kontak storage kontakBaru = kontakPengguna[msg.sender];

        // Memperbarui informasi kontak dalam penyimpanan
        kontakBaru.nama = _nama;
        kontakBaru.nomerTelepon = _nomerTelepon;
    }

    function dapatkanKontak() public view returns (string memory, string memory) {
        // Mengambil informasi kontak dari penyimpanan berdasarkan alamat pengguna saat ini
        Kontak memory kontakPenggunaan = kontakPengguna[msg.sender];

        // Mengembalikan informasi nama dan nomer telepon kontak pengguna
        return (kontakPenggunaan.nama, kontakPenggunaan.nomerTelepon);
    }
}