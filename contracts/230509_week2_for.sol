// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// for문 if문의 판단 기준!
// for문은 어떤 값이 들어가도 같은 식을 반복한다
// if문은 input에 따라 다른 output
contract Note {
    function forLoop() public pure returns(uint){
        uint a;

        for(uint i=1; i<6; i++ /*시작점; 끝점; 변화방식*/) {
            a = a+i; // a+=i
        }

        return a;
    }

    function forLoop2() public pure returns(uint, uint){
        uint a;
        uint i;

        for(i=1; i<6; i++ /*시작점; 끝점; 변화방식*/) {
            a = a+i;
        }

        return (a,i);
    }

    function forLoop3() public pure returns(uint, uint) {
        uint a;
        uint i;

        for(i=1;i<=5; i++) {
            a=a+i;
        }

        return (a,i);
    }
}


contract fixedArray {
    /*
    실습 가이드
    0. getALength(), getA(), getBLength(), getB() 결과 확인하기
    1. 1 -> pushA, 2 -> pushA, 3,4 진행
    2. getA(), getALength() 해보기
    3. 1 -> pushB2, 3-> pushB2, 5,7, 진행
    4. getB(), getBLength() 해보기
    */
    uint[] a;   // a[n]
    uint[4] b;

    function getALength() public view returns(uint) {
        return a.length;
    }

    function pushA(uint _n) public {
        a.push(_n);
    }

    function getA() public view returns(uint[] memory) {
        return a;
    }

    function getBlength() public view returns(uint) {
        return b.length;
    }

    function pushB(uint n, uint _n) public {
        b[n] = _n;
    }

    function getB() public view returns(uint[4] memory) {
        return b;
    }

    uint count;

    function pushB2(uint _n) public {
        b[count++] = _n;
    }

    function getCount() public view returns(uint) {
        return count;
    }
}

contract ForLoop {
    function forLoop() public pure returns(uint){
        uint a;

        for(uint i=1; i<6; i++ /*시작점; 끝점; 변화방식*/) {
            a = a+i; // a+=i
        }

        return a;
    }

    function forLoop2() public pure returns(uint, uint){
        uint a;
        uint i;

        for(i=1; i<6; i++ /*시작점; 끝점; 변화방식*/) {
            a = a+i;
        }

        return (a,i);
    }

    function forLoop3() public pure returns(uint, uint) {
        uint a;
        uint i;

        for(i=1;i<=5; i++) {
            a=a+i;
        }

        return (a,i);
    }

    uint[4] c;
    uint count;

    function pushA(uint _n) public {
        c[count++] = _n;
    }

    function getC() public view returns(uint[4] memory) {
        return c;
    }

    function forLoop4() public view returns(uint) {
        uint a;
        for(uint i=0;i<4;i++) {
            a=a+c[i];
        }

        return a;
    }

    function forLoop5() public view returns(uint) {
        uint a;
        for(uint i=0; i<c.length;i++) {
            a=a+c[i];
        }

        return a;
    }

    //숫자형 array d
    uint[] d;
    //pushD
    function pushD(uint _n) public {
        d.push(_n);
    }
    //getD
    function getD() public view returns(uint[] memory) {
        return d;
    }
    //d를 더해주는 forLoop
    function forLoop6() public view returns(uint) {
        uint a;
        for(uint i=0;i<d.length;i++) {
            a=a+d[i];
        }

        return a;
    }


}