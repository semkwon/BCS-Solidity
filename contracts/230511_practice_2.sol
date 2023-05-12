// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;
    
    // 여러분은 선생님입니다. 학생들의 정보를 관리하려고 합니다. 

    // 번호는 1번부터 시작하여 정보를 기입하는 순으로 순차적으로 증가합니다.

contract Quiz {
    // 학생의 정보는 이름, 번호, 점수, 학점 그리고 듣는 수업들이 포함되어야 합니다.
    struct Student {
        string name;
        uint number;
        uint score;
        string grade;
        string[] classes;
    }

    Student[] students;

    // 학점은 점수에 따라 자동으로 계산되어 기입하게 합니다. 90점 이상 A, 80점 이상 B, 70점 이상 C, 60점 이상 D, 나머지는 F 입니다.
    function setGrade(uint _score) public pure returns(string memory){
        if (_score >= 90) {
            return "A";
        } else if (_score >= 80) {
            return "B";
        } else if (_score >= 80) {
            return "B";
        } else if (_score >= 70) {
            return "C";
        } else if (_score >= 60) {
            return "D";
        } else {
            return "F";
        }
    }
    // * 학생 추가 기능 - 특정 학생의 정보를 추가
    function pushStudent(string memory _name, uint _score, string[] memory _classes) public {
        students.push(Student(_name, students.length+1 , _score, setGrade(_score), _classes));
        name_Student[_name] = Student(_name, students.length, _score, setGrade(_score), _classes);
    }

    // * 학생 조회 기능(1) - 특정 학생의 번호를 입력하면 그 학생 전체 정보를 반환
    function getStudent(uint _number) public view returns(Student memory) {
        return students[_number-1];
    }

    // * 학생 조회 기능(2) - 특정 학생의 이름을 입력하면 그 학생 전체 정보를 반환
    //mapping으로 해야한다 무언가를 조회해야 하니 맵핑!!
    mapping(string => Student) name_Student;
    function getStudentByName(string memory _name) public view returns(Student memory) {
        return name_Student[_name];
    }

    // * 학생 점수 조회 기능 - 특정 학생의 이름을 입력하면 그 학생의 점수를 반환
    function getScoreByName(string memory _name) public view returns(uint) {
        return name_Student[_name].score;
    }

    // * 학생 전체 숫자 조회 기능 - 현재 등록된 학생들의 숫자를 반환 - length
    function getLength() public view returns(uint) {
        return students.length;
    }

    // * 학생 전체 정보 조회 기능 - 현재 등록된 모든 학생들의 정보를 반환
    function getAllStudents() public view returns(Student[] memory) {
        return students;
    }

    // * 학생들의 전체 평균 점수 계산 기능 - 학생들의 전체 평균 점수를 반환
    function getAvg() public view returns(uint) {
        // 각 학생의 점수를 다 더해주는 변수 선언하고
        // 포문으로 다 더해주고, 마지막엔 나눠준다.
        uint _sum;

        for (uint i=0; i < students.length; i++) {
            _sum = _sum + students[i].score;
        }
        return _sum/students.length;
    }

    // * 선생 지도 자격 자가 평가 시스템 - 학생들의 평균 점수가 70점 이상이면 true, 아니면 false를 반환
    function selfEval() public view returns(bool) {
        if(getAvg() >= 70) {
            return true;
        } else {
            return false;
        }
    }
}