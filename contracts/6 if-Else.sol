// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ifElse {
function foo(uint x) public pure returns(uint) {
    if(x < 10){
        return 0;
    }else if (x < 20) {
    return 1;
    }else{
        return 2;
    }
}
}