// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 조건 여러개인 If문 - or/and
contract IF{
    //50보다 크거나 10이하면 -> or
    function setNumber(uint _n) public pure returns(string memory) {
        if (_n > 70 || _n <= 10) {
            return "A";
        } else if (_n >= 50 && _n%3==0) {
            return "B";
        } else {
            return "C";
        }
    }
}

//열거형
contract ENUM{
    enum Food {
        Chicken,
        Sushi,
        Bread,
        Coconut
    }

    Food a;
    Food b;
    Food c;

    function setA() public {
        a = Food.Chicken;
    }
    function setB() public {
        b = Food.Sushi;
    }
    function setC() public {
        c = Food.Bread;
    }
   function getABC() public view returns(Food, Food, Food) {
      return (a,b,c);
   }

   function getABC2() public view returns(uint8, uint8, uint8) {
       return (uint8(a), uint8(b), uint8(c));
   }
}

contract ENUM2 {
    enum color {
        red,
        yellow,
        green,
        blue,
        purple,
        rainbow
    }

    color c;

    function setC() public {
        c = color.red;
    }

    function setC2(uint _n) public {
        c = color(_n);
    }

    function getC() public view returns(color) {
        return c;
    }
    
}

contract ENUM3 {
   enum Status {
      neutral,
      high,
      low
   }
   Status st;

   uint a=5;

   function higher() public {
      a++;
      //7 이상
      setA();
   }

   function lower() public {
      a--;
      // 3이하
      setA();
   }

   function setA() public {
      if(a>=7) {
        st = Status.high;
      } else if(a<=3) {
          st = Status.low;
      } else {
          st = Status.neutral;
      }
   }

   function getA() public view returns(uint) {
      return a;
   }

   function getST() public view returns(Status) {
      return st;
   }
}
