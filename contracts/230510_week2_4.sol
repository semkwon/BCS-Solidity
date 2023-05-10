// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract BOOL {
    bool isFun;

    function getVar() public view returns(bool){
        return isFun;
    }

    function Fun() public {
        isFun = true;
    }

    function notFun() public {
        isFun = false;
    }

    //true 넣으면 true로 false 넣으면 false로 기타 아무 값을 넣으면 true로 (1, "a" 넣어보기)
    function Fun(bool _a) public {
        isFun = _a;
    }
}