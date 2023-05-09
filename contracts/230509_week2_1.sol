// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MAPPING {
    struct Student{
        uint number;
        string name;
        string[] subject;
    }

    mapping(string => Student) Teacher_Student;

    function setTeacher_Student(string memory _Teacher, uint _number, string memory _name, string[] memory _subject) public {
        Teacher_Student[_Teacher] = Student(_number, _name, _subject);
    }

    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }

}

contract MAPPING2 {
    struct Student{
        uint number;
        string name;
        string[] classes;
    }

    mapping(string => Student) Teacher_Student;
    mapping(string => Student[]) Teacher_Class;


    function setTeacher_Student(string memory _Teacher, uint _number, string memory _name, string[] memory _classes) public {
        Teacher_Student[_Teacher] = Student(_number, _name, _classes);
    }

    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }

    function setTeacher_Class(string memory _Teacher, uint _number, string memory _name, string[] memory _classes) public{
        Teacher_Class[_Teacher].push(Student(_number, _name, _classes));
    }

    function getTeacher_Class(string memory _Teacher) public view returns(Student[] memory) {
        return Teacher_Class[_Teacher];
    }
}

//선생님이 담당하고 있는 구조체에 있는 학생들의 점수의 평균 구하기

