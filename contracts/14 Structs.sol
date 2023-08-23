// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Todos {
    // deklarasi struct Todo
    struct Todo {
        string text;
        bool completed;
    }

    // Array dari struktur 'Todo'
    Todo[] public todos;

    // function untuk membuat tugas baru
    function create(string calldata _text) public {
        // inisialisasi struct dan tamabahkan ke array
        todos.push(Todo(_text, false));
    }

    // function untuk mendapatkan detail tugas berdasarkan indeks
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // function untuk mengubah teks tugas
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // Function untuk mengubah status tugas selesai atau belum?
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}