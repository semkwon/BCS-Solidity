// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Note{
    //ABC라는 구조체 안에는 숫자형 a, 문자형 b, 문자형 array c가 들어있다.
    struct ABC {
        string a;
        uint b;
        string[] c;
    }
    //ABC가 들어가는 array ABCs를 구현하고 ABCs에 ABC를 넣는 함수,
    ABC[] ABCs;

    function pushABC(string memory _a, uint _b, string[] memory _c) public {
        ABCs.push(ABC(_a, _b, _c));
    }

    //특정 ABC를 반환하는 함수,
    function getABC(uint _n) public view returns(ABC memory) {
        return ABCs[_n-1];
    }

    // ABCs 전체를 반환하는 함수, 
    function getABCs() public view returns(ABC[] memory) {
        return ABCs;
    }

    //특정 ABC의 c array를 반환받는 함수를 각각 구현하시오.
    function getABCArr(uint _n) public view returns(string[] memory) {
        return ABCs[_n-1].c;
    }
}

//검색할 때 좋다
contract Map {
    //key => value
    mapping (uint => uint) a;
    mapping (string => uint) b;

    function setMap(string memory _n, uint _u) public {
        b[_n] = _u;
    }

    function getMap(string memory _n) public view returns(uint) {
        return b[_n];
    }
}

contract MAPPING {
    mapping (uint => uint) a;
    mapping (string => uint) b;
    mapping (bytes => uint) c;

    function setB(string memory _key , uint _value) public {
        b[_key] = _value;
    }

    function getB(string memory _key) public view returns(uint) {
        return b[_key];
    }

    function setC(bytes memory _key, uint _value) public {
        c[_key] = _value;
    }

    function getC(bytes memory _key) public view returns(uint) {
        return c[_key];
    }

        //우리만의 자료형을 만듬
    struct Student {
        uint number;
        string name;
        string[] classes;
    }

    mapping (string => Student) Teacher_Student;

    function setTeacher_Student(string memory _teacher, uint _number, string memory _name, string[] memory _classes) public {
        Teacher_Student[_teacher] = Student(_number, _name, _classes);
    }

    function getTeacher_Student(string memory _teacher) public view returns(Student memory) {
        return Teacher_Student[_teacher];
    }
}

