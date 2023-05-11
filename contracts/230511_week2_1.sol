// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Mapping {
    //숫자를 넣어서 숫자가 나오게, 
    mapping (uint => uint) NumToNum;
    mapping (string => uint) StrToNum;

    //이를, 숫자, 지갑
    struct Wallet {
        string name;
        uint number;
        address account;
    }

    mapping (string => Wallet) StrToWallet;
    
    Wallet[] wallets;

    // wallets에 추가할 수 있는 함수
    function pushWallet(string memory _name, uint _number, address  _account) public {
        wallets.push(Wallet(_name, _number, _account));
    }

    //특정 번째의 월릿 받기
    function getWallet(uint _n) public view returns(Wallet memory) {
        return wallets[_n-1];
    }

    //특정 월렛의 지갑 주소 반환
    function getAddress(uint _n) public view returns(address) {
        return wallets[_n-1].account;
    }

    //모든 월렛 반화
    function getAllWallets() public view returns(Wallet[] memory) {
        return wallets;
    }

}

contract Mapping2 {
    //숫자형만 들어가는 자리10자리 고정 배열
    //그냥 무한정으로 들어가는 편한 배열

    uint [10] fixedTenArr;
    uint [] Arr;

    uint count;
    //
    function setTenArr(uint _n) public {
        fixedTenArr[count++] = _n;
    }

    function pushArr(uint _n) public {
        Arr.push(_n);
    }

    function getTenArr() public view returns(uint[10] memory) {
        return fixedTenArr;
    }

    // 인피니티에서 특정 번째 숫자를 바꿔주기
    function changeArr(uint _k, uint _z) public {
        Arr[_k-1] = _z;
    }

    // fixed의 숫자 다 더해주기
    function addTenArr() public view returns(uint) {
        uint a;
        for (uint i = 0; i < fixedTenArr.length; i++) {
            a = a  + fixedTenArr[i];
        }
        return a;
    }
}

