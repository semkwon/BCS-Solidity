// SPDX-License-Identifier: GPL-3.0
// made by 고종우

pragma solidity ^0.8.18;

contract note {
    /* 숫자형 변수 a, 문자형 변수 b, bytes2형 변수 c를 담은 구조체 D를 선언하세요. */
    struct D {
        uint a;
        string b;
        bytes2 c;
    }

    // D형 변수 dd를 선언하세요.
    D dd;

    // dd에 값을 부여하는 setDD함수를 구현하세요.
    function setDD(uint _a, string memory _b, bytes2 _c) public {
        dd = D(_a, _b, _c);
    }

    //dd의 값을 반환하는 getDD 함수를 구현하세요
    function getDD() public view returns(D memory) {
        return dd;
    }

    // D형 변수들이 들어가는 array Ds를 선언하세요.
    D[] Ds;

    // Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
    function pushD(uint _a, string memory _b, bytes2 _c) public {
        Ds.push(D(_a, _b, _c));
    }

    function pushD2() public{
        Ds.push(dd);
    }

    // Ds array의 n번째 요소를 반환받는 getN이라는 함수를 구현하세요.
    function getN(uint _n) public view returns(D memory) {
        return Ds[_n-1];
    }

}