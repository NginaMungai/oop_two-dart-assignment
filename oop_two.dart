// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void displayInfo() {
    print("Student: $name, Age: $age, Grade Level: $gradeLevel");
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void displayInfo() {
    print("Teacher: $name, Age: $age, Subject: $subject");
  }
}

// Main class to create student and teacher objects
void main() {
  Student student = Student("Alice", 15, "10th Grade");
  Teacher teacher = Teacher("Mr. Smith", 35, "Mathematics");

  student.displayInfo();
  teacher.displayInfo();
}
