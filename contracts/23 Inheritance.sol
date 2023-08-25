// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Kontrak induk A
contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Kontrak B mewarisi dari kontrak A
contract B is A {
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

// kontrak C is A {
   contract C is A {
        function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Kontrak D mewarisi dari kontrak B dan C 
contract D is B, C {
    function foo() public pure override (B, C) returns (string memory) {
        return super.foo();
    }
}


// Kontrak E mewarisi dari kontrak C dan B
contract E is C, B {
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Kontrak F mewarisi dari kontrak A dan B
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
} 
