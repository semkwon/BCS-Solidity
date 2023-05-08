// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Struct1 {
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

    // dd의 값을 반환하는 getDD 함수를 구현하세요
    function getDD() public view returns(D memory){
        return dd;
    }

    // D형 변수들이 들어가는 array Ds를 선언하세요.
    D[] Ds;

    // Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
    function pushD(uint _a, string memory _b, bytes2 _c) public {
        Ds.push(D(_a, _b, _c));
    }

    function pushD2() public {
        Ds.push(dd);
    }

    // Ds array의 n번째 요소를 반환받는 getN이라는 함수를 구현하세요.
    function getN(uint _n) public view returns(D memory) {
        return(Ds[_n-1]);
    }
}   

contract Struct2 {
    // 1. 이름, 번호, 생년월일을 담은 student라는 구조체와
    struct Student {
        string name;
        uint number;
        uint birthday;
    }

    // 제목, 번호, 날짜를 담은 class라는 구조체를 선언하시오.
    struct Class {
        string title;
        uint number;
        uint date;
    }

    // 2. student형 변수 s 와 class형 변수 c를 선언하시오.
    Student S;
    Class C;

    // 3. s에 값을 부여하는 함수 setS와 c에 값을 부여하는 함수 setC를 각각 구현하시오
    function setS(string memory _name, uint _number, uint _birthday) public {
        S = Student(_name, _number, _birthday);
    }

    function setC(string memory _title, uint _number, uint _date) public {
        C = Class(_title, _number, _date);
    }

    // 4. 변수 s의 값을 반환받는 함수 getS와 c의 값을 반환받는 함수 getC를 각각 구현하시오.
    function getS() public view returns(Student memory) {
        return S;
    }

    function getC() public view returns(Class memory) {
        return C;
    }

    // 5. student형 변수들이 들어가는 array students와 class형 변수들이 들어가는 array classes를 선언하시오.
    Student[] students;
    Class[] classes;

    // 6. students에 student 구조체를 넣는 pushStudent 함수를 구현하세요.
    function pushStudent(string memory _name, uint _number, uint _birthday) public {
        students.push(Student(_name, _number, _birthday));
    }

    // classes에 class 구조체를 넣는 pushClass 함수를 구현하세요.
    function pushClass(string memory _title, uint _number, uint _date) public {
        classes.push(Class(_title, _number, _date));
    }
}

contract Mapping {
    // 이름을 검색하면 그 아이의 키를 반환받는 contract를 구현하고 싶다.
    mapping(string => uint) height;
  
    // 정보 넣기
    function setHeight(string memory _name, uint _h) public {
        height[_name] = _h;
    }

    // 정보 받기
    function getHeight(string memory _name) public view returns(uint) {
        return height[_name];
    }
    
    // 정보 지우기
    function deleteHeight(string memory _name) public {
        delete height[_name];
    }
}

contract Address {
    address a;

    // getAddress
    function getAddress() public view returns(address) {
        return address(this);
    }

    // getMyAddress
    function getMyAddress() public view returns(address) {
        return address(msg.sender);
    }
}