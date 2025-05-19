## que.2 Write a contract that manages a list of student records (name, roll number). Allow adding and retrieving student data.

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords {
    struct Student {
        string name;
        uint rollNumber;
    }
    
    Student[] public students;
    mapping(uint => bool) public rollNumberExists;
    
    function addStudent(string memory _name, uint _rollNumber) public {
        require(!rollNumberExists[_rollNumber], "Roll number already exists");
        students.push(Student(_name, _rollNumber));
        rollNumberExists[_rollNumber] = true;
    }
    
    function getStudent(uint _index) public view returns (string memory, uint) {
        require(_index < students.length, "Invalid index");
        return (students[_index].name, students[_index].rollNumber);
    }
    
    function getStudentCount() public view returns (uint) {
        return students.length;
    }
}
```
