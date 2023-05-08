// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;
// StringAndBytes & Array 복습

/*
실습가이드
1. 1 -> push, 2 -> push, 3 -> push, 4 -> push
2. getLength 해보기 -> 4 확인
3. getNumber -> 1,2,3,4 각각 해보기 -> 각각 1,2,3,4 확인
4. pop 해보기
5. getLength 해보기 -> 3확인
6. getNumber -> 1,2,3,4 각각 해보기 -> 각각 1,2,3, 오류 확인
7. deleteNum -> 2 해보기
8. getNumber -> 2 해보기 -> 0 확인
9. changeNum -> 2,5 해보기
10. getNumber -> 2 해보기 -> 5 확인 
*/

contract Array {
    // array = 같은 자료형들이 들어있는 집합
    uint[] numbers; // 자료형 [] array 이름

    // 1. 넣기
    function push(uint _a) public {
        numbers.push(_a); // 배열이름.push(변수)
    }

    // 2. 빼기
    function pop() public {
        numbers.pop(); // 배열이름.pop(), 맨뒤의 숫자를 날림
    }

    // 3. 보기
    function getNumber(uint _n) public view returns(uint) {
        return numbers[_n-1]; // 배열이름[_n번째]
    }

    // 4. 길이
    function getLength() public view returns(uint) {
        return numbers.length; //배열이름.길이
    }

    // 5. 바꾸기
    function changeNum(uint _k, uint _z) public {
        numbers[_k-1] = _z; //배열이름[_k번째] = _z -> _k번째를 _z로 바꿔
    }

    // 6. delete 
    function deleteNum(uint _n) public {
        delete numbers[_n-1]; // delete 배열이름[_n번째] = _n번째 숫자를 없애줘
    }

    //7. 전체 array 반환
    function returnArray() public view returns(uint[] memory) {
        return numbers;
    }
}

contract Array_s {
    // array = 같은 자료형들이 들어있는 집합
    string[] letters; // 자료형 [] array 이름

    // 1. 넣기
    function push(string memory _a) public {
        letters.push(_a); // 배열이름.push(변수)
    }

    // 2. 빼기
    function pop() public {
        letters.pop(); // 배열이름.pop(), 맨뒤의 문자를 날림
    }

    // 3. 보기
    function getLetter(uint _n) public view returns(string memory) {
        return letters[_n-1]; // 배열이름[_n번째]
    }

    // 4. 길이
    function getLength() public view returns(uint) {
        return letters.length; //배열이름.길이
    }

    // 5. 바꾸기
    function changeLet(uint _k, string memory _z) public {
        letters[_k-1] = _z; //배열이름[_k번째] = _z -> _k번째를 _z로 바꿔
    }

    // 6. delete 
    function deleteLet(uint _n) public {
        delete letters[_n-1]; // delete 배열이름[_n번째] = _n번째 문자를 없애줘
    }

    //7. 전체 array 반환
    function returnArray() public view returns(string[] memory) {
        return letters;
    }
}

contract Note {
    // 이름, 번호, 생년월일을 담은 student라는 구조체와
    struct Student{
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
    // student형 변수 s 와 class형 변수 c를 선언하시오.
    Student S;
    Class C;


// s에 값을 부여하는 함수 setS와 c에 값을 부여하는 함수 setC를 각각 구현하시오
    function setStudent(string memory _name, uint _number, uint _birthday) public {
        S = Student(_name, _number, _birthday);
    }

    function setClass(string memory _title, uint _number, uint _date) public {
        C = Class(_title, _number, _date);
    }

// 변수 s의 값을 반환받는 함수 getS와 c의 값을 반환받는 함수 getC를 각각 구현하시오.
    function getStudent() public view returns(Student memory) {
        return S;
    }

    function getClass() public view returns(Class memory) {
        return C;
    }

// student형 변수들이 들어가는 array students와 class형 변수들이 들어가는 array classes를 선언하시오.

    Student[] students;
    Class[] classes;

// students에 student 구조체를 넣는 pushStudent 함수를 구현하세요.
    function pushStudent(string memory _name, uint _number, uint _birthday) public {
        students.push(Student(_name, _number, _birthday));
    }

// classes에 class 구조체를 넣는 pushClass 함수를 구현하세요.
    function pushClass(string memory _title, uint _number, uint _date) public {
        classes.push(Class(_title, _number, _date));
    }
}

contract Quiz1 {
    //숫자형 변수 a, 문자형 변수 b, bytes2형 변수 c를 담은 구조체 D를 선언하세요.
    struct D {
        uint a;
        string b;
        bytes2 c;
    }

    //D형 변수 dd를 선언하세요.
    D dd;

    //dd에 값을 부여하는 setDD함수를 구현하세요.
    function setDD(uint _a, string memory _b, bytes2 _c) public {
        dd = D(_a, _b, _c);
    }
    //D형 변수들이 들어가는 array Ds를 선언하세요.
    D[] Ds;

    //Ds에 새로운 D형 변수를 넣는 pushD 함수를 구현하세요.
    function pushD(uint _a, string memory _b, bytes2 _c) public {
        Ds.push(D(_a, _b, _c));
    }
}

contract Quiz2 {
    //숫자형 변수 number, 문자형 변수 name, bytes2형 변수 password 그리고 member라는 구조체를 선언하세요.
    struct member {
        uint number;
        string name;
        bytes2 password;
    }

    //member형 변수 Michael을 선언하세요.
    member Michael;

    //Michael에 값을 부여하는 setM 함수를 구현하세요.
    function setM(uint _number, string memory _name, bytes2 _password) public {
        Michael = member(_number, _name, _password);
    }

    //member형 변수들이 들어가는 members를 선언하세요.
    member[] members;

    //members에 새로운 member 변수를 넣는 pushMember 함수를 구현하세요
    function pushMember(uint _number, string memory _name, bytes2 _password) public {
        members.push(member(_number, _name, _password));
    }
}


