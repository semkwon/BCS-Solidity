// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract ForLoop {

    // i =1~5까지 더하는 for문
    function forLoop() public pure returns(uint) {
        uint a;

        for (uint i=1; i <6; i++) {
            a = a+i;
        }

        return a;
    }
    //숫자형 4자리가 들어가는 array 상태변수 b, 숫자형 상태변수 count
    uint[4] b;
    uint count;

    //getB, forLoop b 더해주기
    function getB() public view returns(uint[4] memory) {
        return b;
    }
    function forLoop2() public view returns(uint) {
        uint a;

        for(uint i=1; i<b.length; i++) {
            a = a + b[i];
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