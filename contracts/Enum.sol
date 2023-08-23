// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Enum {
    // enum yang mewakili status pengiriman
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    /*
    Nilai default adalah element pertama yang tercantum dalam definisi tipe,
    contoh "Pending".
    */ 
    Status public status;
    // Mengembalikan nilai enum dalam bentuk uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Memperbarui status dengan mengirimkan nilai enum sebagai input
    function set(Status _status) public {
        status = _status;
    }

    // Anda dapat memperbarui ke enum tertentu seperti ini
    function cancel() public {
        status = Status.Canceled;
    }
    
    // delete mengatur kembali enum ke nilai pertamanya, yaitu 0
    function reset() public {
        delete status;
    }
}