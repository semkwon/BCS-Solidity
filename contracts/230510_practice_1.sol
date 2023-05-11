// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;


contract MAPPING {
    struct Student{
        string name;
        uint number;
        string[] subjects;
    }

    Student[] students;

    //students 안에 정보 넣기
    function pushStudents(string memory _name, uint _number, string[] memory _subjects) public {
        students.push(Student(_name,_number,_subjects));
    }
    //n번째 학생을 알려주는 getStudent
    function getStudent(uint _n) public view returns(Student memory){
        return students[_n];
    }

    //n번째 학생의 이름만 받기 string
    function getStudentName(uint _n) public view returns(string memory) {
        return students[_n].name;
    }

    //선생님 - 학생들 정보
    mapping(string => Student[]) Teacher_Students;

    //선생님 - 학생 or 학생들 연결 정보 넣는 함수
    function setStudent2(string memory _Teacher, string memory _name, uint _number, string[] memory _subjects) public {
        Teacher_Students[_Teacher].push(Student(_name, _number, _subjects));
    }

    //n번 요소의 number 수정
    function pushStudent2(string memory _Teacher, uint _n, uint _number) public {
        Teacher_Students[_Teacher][_n-1].number = _number;
    }

    //_Teacher의 전체 학생
    function getStudentAll(string memory _Teacher) public view returns(Student[] memory) {
        return Teacher_Students[_Teacher];
    }
}

contract IF {
    
    //1. 점수가 50점이상이면 P, 아니면 F
    function getGrade(uint _n) public pure returns(string memory) {
        if (_n >= 50) {
            return "P";
        } else {
            return "F";
        }
    }

    //2. 점수가 70점 이상이면 A, 50점 이상이면 B, 아니면 C반
    function getGrade2(uint _n) public pure returns(string memory) {
        if (_n >= 70) {
            return "A";
        } else if (_n >= 50){
            return "B";
        } else {
            return "C";
        }
    }

    uint[] even;
    uint[] odd;

    //3. 짝수면 even array에, 홀수면 odd array에 넣기
    function evenOdd(uint _n) public {
        if(_n%2 == 0) {
            even.push(_n);
        } else {
            odd.push(_n);
        }
    }

    //4. odd, even 어레이 받기
    function getArray() public view returns(uint[] memory, uint[] memory) {
        return(even, odd);
    }

    uint[] A;
    uint[] B;
    uint[] C;

    //5. 3으로 나누었을 때, 나머지가 1이면 A, 2이면 B, 0이면 C 어레이에 넣기 (ternary)
    function ternary(uint _n) public {
        if(_n%3 == 1) {
            A.push(_n);
        } else if(_n%3 == 2) {
            B.push(_n);
        } else {
            C.push(_n);
        }
    }
}

contract IF2 {
    function setA()
}
    //1.a) Alice, 90 -> setA()
	//  b) Bob, 75 -> setB()
	//  c) Charlie, 85 -> setC()
    //2. getStudentsABC()
    //3. 초기화 후 1,2,3,4번 다시 해보기