// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;
/*
계산기를 만드세요
2개의 input 값을 받아 더한 값을 반환하는 함수 Add, 곱한 값을 반환하는 함수 Mul, 뺀 값을 반환하는 Sub 그리고 몫과 나머지를 반환하는 함수 Div를 구현하세요
*/

contract Calculator {
    uint a;
    uint b;

    function add(uint _a, uint _b) public pure returns(uint) {
        return(_a+_b);
    }

    function divide(uint _a, uint _b) public pure returns(uint, uint) {
        return(_a/_b, _a%_b);
    }

    function Add2(uint _a, uint _b) public  returns(uint) {
        a = _a;
        b = _b;
        return a+b;
    }
}

contract BYTES {
    //0x16을 넣고 setA 실행하기
    //getA -> 0x16 결과 확인
    //setA2
    //getA -> 0x3136 결과 확인
    //abc를 넣고 setA3 실행하기
    //getA -> 0x616263 결과 확인
    bytes A;
    function setA(bytes memory _A) public {
        A = _A;
    }
    function getA() public view returns(bytes memory) {
        return A;
    }
    //string으로 받고 bytes로 내보내기
    function setA2(string memory _A) public {
        A = bytes(_A);
    }
}

contract STRINGTOBYTES {
    string a;

    function setString(string memory _a) public {
        a = _a;
    }
    function getString() public view returns(string memory) {
        return 
    }
}