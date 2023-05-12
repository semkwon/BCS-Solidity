// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
실습가이드
1. 1번 지갑 준비(주소 복붙) -> setOwner, 2번 지갑 준비(주소 복붙) -> setA
2. deploy 후 1번 지갑으로 10eth -> deposit()
3. contract 잔액 변화 확인
4. 1번 지갑 넣고, 1000000000000000000 transferTo() -> 1번지갑, contract 잔액 변화 확인
5. 2번 지갑, 1000000000000000000, transferTo() -> 2번 지갑, contract 잔액 변화 확인

0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
*/

// payable: 돈을 받을 수 있는지 확인, 지갑 잔고를 바꿔주기 때문에 가스비 사용
// 지갑이 있다 가정했을 때, 지갑에 돈 전송? payable이 붙어야 전송이 가능하다 => 돈을 받을 수 있다

contract Note {
    address a;
    address payable owner;

    // 함수에 payable 붙이기 
    function deposit() public payable returns(uint) {
        return msg.value;
    }

    // 돈을 그냥 전송하는 거래를 일으켰는데, 거래를 받는 사람이 스마트컨트랙트면 알아서 실행시켜서 받는다.
    // 받는 지갑이 contact이면 저절로 실행된다.
    receive() external payable{}

    fallback() external payable{}

    
    // 지갑 하나는 돈을 받을 수가 있고, 하나는 받을 수 없다.
    function setOwner() public {
        owner = payable(msg.sender); //msg.sender - 거래를 일으킨 사람
    }

    function getOwner() public view returns(address) {
        return owner;
    }

    function setA() public {
        a = msg.sender;
    }

    function getA() public view returns(address) {
        return a;
    }

    // 누구한테, 얼마를 보내줘 (address payable, uint)
    function transferTo(address payable _to, uint _amount) public {
        _to.transfer(_amount); // 지갑주소.transfer(규모)
    }

    function transferToOwner(uint _amount) public {
        owner.transfer(_amount);
    }
    /* function transferToA(uint _amount) public {
        a.transfer(_amount); 
    } */

}
