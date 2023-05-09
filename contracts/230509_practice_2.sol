// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MAPPING {
    struct Student {
        string name;
        uint number;
        string[] subject;
    }

    mapping(string => Student) Teacher_Student;

    function setTeacher_Student(string memory _Teacher, string memory _name, uint _number, string[] memory _subject) public {
        Teacher_Student[_Teacher] = Student(_name, _number, _subject);
    }

    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }
}