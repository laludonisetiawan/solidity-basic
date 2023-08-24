// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract TaskManager {
    // Enum untuk status tugas: Pending, InProgress, Completed
    enum TaskStatus {Pending, InProgress, Completed}

    // Struct untuk menyimpan informasi tugas
    struct Task {
        string description; // Deskripsi tugas
        TaskStatus status; // Status tugas (dari enum TaskStatus)
    } 

    Task[] public tasks; // Array untuk menyimpan semua tugas

    // Fungsi untuk menambahkan tugas baru dengan status Pending
    function addTask(string memory _deskription) public {
        // Membuat objek Task baru dengan deskripsi dan status Pending
        Task memory newTask = Task ({
            description: _deskription,
            status: TaskStatus.Pending
        });

        tasks.push(newTask); // Menambahkan tugas baru ke dalam array tasks
    }

    // Fungsi untuk mengubah status tugas yang sudah ada
    function updateTaskStatus(uint _taskIndex, TaskStatus _status) public {
        // Memastikan indeks tugas valid
        require(_taskIndex < tasks.length, "Indeks tugas di luar jangkauan");
        tasks[_taskIndex].status = _status; // Mengubah status tugas sesuai input
    }

    // Fungsi untuk mendaptkan deskripsi dan status tugas berdasarkan indeks
    function getTask(uint _taskIndex) public view returns (string memory, TaskStatus) {
        // Memastikan indeks tugas valid
        require(_taskIndex < tasks.length, "Indeks tugas di luar jangkauan");
        Task memory task = tasks[_taskIndex]; // Mengambil tugas dari array berdasarkan indeks
        return (task.description, task.status); // Mengembalikan deksripsi dan status tugas
    }

    // Fungsi untuk mendaptkan jumlah total tugas yang ada
    function getTaskCount() public view returns (uint) {
        return tasks.length; // Mengembalikan panjang array task sebagai jumlah tugas
    }
}