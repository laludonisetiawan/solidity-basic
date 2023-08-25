// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Event {
    // Deklarasi event
    // hingga 3 parameter bisa dijadikan index
    // parameter yang di indexs membantu menyaring log berdasarkan parameter yang diindexs
    event Log(address indexed  sender, string message);
    event AnotherLog();


    function test() public {
        emit Log(msg.sender, "hello world");
        emit Log(msg.sender, "hello event");
        emit AnotherLog();
    }
}