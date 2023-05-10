// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

    // 1. 이 점수는 학점이 어떻게 되니?
contract IF {
    function setGrade(uint _score) public pure returns(string memory) {
        if(_score >=50) {
            return "p";
        } else {
            return "F";
        }
    }

    // 2. 점수가 70점 이상이면 A, 50점 이상이면 B, 아니면 C반
    function setGrade2(uint _score) public pure returns(string memory) {
        if(_score >= 70) {
            return "A";
        } else if (_score >= 50){
            return "B";
        } else {
            return "C";
        }
    }

    // 3. 짝수면 even array에, 홀수면 odd array에 넣기
    uint[] even;
    uint[] odd;

    function evenOrOdd(uint _n) public {
        if (_n%2 == 0) {
            even.push(_n);
        } else {
            odd.push(_n);
        }
    }
    // 4. odd, even 어레이 받기
    function getEvenAndOdd() public view returns(uint[] memory, uint[] memory) {
        return (odd, even);
    }

    // 5. 3으로 나누었을 때, 나머지가 1이면 A, 2이면 B, 0이면 C 어레이에 넣기
    uint[] A;
    uint[] B;
    uint[] C;

    function ternary(uint _n) public {
        if (_n%3 ==1) {
            A.push(_n);
        } else if(_n%3 ==2) {
            B.push(_n);
        } else {
            C.push(_n);
        }
    }
}

contract Quiz{
    //학생이라는 구조체 - 번호, 이름, 점수, 학점
    //if문 써서 학점 채워 넣기
    struct Student {
        uint number;
        string name;
        uint score;
        string credit;
    }

    Student Alice;
    Student Bob;
    Student Charlie;

    Student[] Students;

    //학생 정보 중 번호, 이름, 점수만하면 학점은 자동 계산하는 함수
    // 점수가 90점 이상이면 A, 80점 이상이면 B, 70점 이상이면 C, 나머지는 F
    function setAlice(uint _number, string memory _name, uint _score) public {
        string memory _credit;

        if(_score >= 90) {
            _credit = "A";
        } else if(_score >=80) {
            _credit = "B";
        } else if(_score >=70) {
            _credit = "C";
        } else {
            _credit = "F";
        }

        Alice = Student(_number, _name, _score, _credit);
    }
    function setBob(uint _number, string memory _name, uint _score) public {
        string memory _credit;

        if(_score >= 90) {
            _credit = "A";
        } else if(_score >=80) {
            _credit = "B";
        } else if(_score >=70) {
            _credit = "C";
        } else {
            _credit = "F";
        }

        Bob = Student(_number, _name, _score, _credit);
    }
    function setCharile(uint _number, string memory _name, uint _score) public {
        string memory _credit;

        if(_score >= 90) {
            _credit = "A";
        } else if(_score >=80) {
            _credit = "B";
        } else if(_score >=70) {
            _credit = "C";
        } else {
            _credit = "F";
        }

        Charlie = Student(_number, _name, _score, _credit);
    }

    function getStudents() public view returns(Student memory,Student memory,Student memory) {
        return (Alice, Bob, Charlie);
    }

    function pushStudent(uint _number, string memory _name, uint _score) public {
        string memory _credit;

        if(_score >= 90) {
            _credit = "A";
        } else if(_score >=80) {
            _credit = "B";
        } else if(_score >=70) {
            _credit = "C";
        } else {
            _credit = "F";
        }
        Students.push(Student(_number, _name, _score, _credit));
    }

    function pushStudent2(uint _number, string memory _name, uint _score) public {
        Students.push(Student(_number, _name, _score, setGrade(_score)));
    }

    function getStudents3() public view returns(Student[] memory) {
        return Students;
    }


    // 점수 기반 학점 배분하는 기능을 가진 함수
    function setGrade(uint _score) public pure returns(string memory) {
      if(_score>=90) {
         return 'A';
      } else if(_score >=80) {
         return 'B';
      } else if(_score >=70) {
         return 'C';
      } else {
         return 'F';
      }
   }
}