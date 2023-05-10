// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MAP {
    struct Student{
        string name;
        uint number;
        string[] subjects;
    }

    Student[] students;

    //students 안에 정보 넣기
    function pushStudents(string memory _name, uint _number, string[] memory _subjects) public {
        students.push(Student(_name, _number, _subjects));
    }

    //n번째 학생을 알려주는 getStudent
    function getStudent(uint _n) public view returns(Student memory) {
        return students[_n-1];
    }

    //n번째 학생의 이름만 받기 string
    function getStudentName(uint _n) public view returns(string memory) {
        return students[_n].name;
    }


    //선생님 - 학생들 정보
    mapping (string => Student[]) Teacher_Students;

    //선생님 - 학생 or 학생들 연결 정보 넣는 함수
    function pushStudent(string memory _Teacher, string memory _name, uint _number, string[] memory _subjects) public {
        Teacher_Students[_Teacher].push(Student(_name, _number, _subjects));
    }

    //n번 요소의 number 수정
    function pushStudent2(string memory _Teacher, uint _n, uint _number) public {
        Teacher_Students[_Teacher][_n-1].number = _number;
    }

    function getStudent(string memory _Teacher) public view returns(Student[] memory) {
        return Teacher_Students[_Teacher];
    }
}