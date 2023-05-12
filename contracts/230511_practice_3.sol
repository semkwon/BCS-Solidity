//
 * 보충반 조회 기능 - F 학점을 받은 학생들의 숫자와 그 전체 정보를 반환 (정리시작)
    function FClass() public view returns(Student[] memory) {

        uint num; // 4. 그래서 F 학점 학생수를 구해보자

        // Student[num] memory F_students;  // 5. num 만큼의 array. 해도 오류가 발생함.
        Student[] memory F_students = new Student[](num);  // 6. new 키워드를 사용해야 함.
        /*  new는 언제쓰나? 동적이야! 변할수가있어. 그런데 동적으로 선언을 못해!(예를들어 지역변수, 또는 배열길이가 정해져있거나 변할거야!)
        그럴때 사용~
        */
        // 1. 지역변수지만 무거우니까 memory를 써줘야 함. Student[] memory F_students; 지역변수는 사이즈를 안정한 상태에서 push를 하려고하면 에러 발생함.
        // 2. 사이즈 정해줘야 됨. Student[10] memory F_students; 그런데 사이즈를 정해도 오류남. 왜냐하면 push가 배열의 길이를 늘리는 것이기 때문.
        /* 아래 참고
            function bytesToString4(string memory _a, uint _n) public pure returns(string memory) {
            bytes memory _b = new bytes(1);
            _b[0] = bytes(_a)[_n-1]; [나중에] 조건문 배운 후에 다시 돌아오기, 글자 수에 맞게
            return string(_b);
        */
        
       // num이 몇명인지 확인하기
        for(uint i = 0; i < students.length; i++) {
            if(keccak256(bytes(students[i].credit)) == keccak256(bytes("F"))) {
                num++;
                // 7. F_students[num] = students[i];   몇명인지를 세보자~
                // 3. F_students[_n] = students[i]; 해보자.그런데 Student가 몇명일줄알고?
            }
        }

        uint _num;
        for(uint i = 0; i < students.length; i++) {
            if(keccak256(bytes(students[i].credit)) == keccak256(bytes("F"))) {
                F_students[_num] = students[i];
                _num++;
            }
        }

    }