import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Class implementing an interface
class Dog extends LivingBeing implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  // Method overriding an inherited method
  @override
  void breathe() {
    print('Dog is breathing...');
  }
}

// Class initialized with data from a file
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Factory constructor to initialize from a file
  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(data[0], int.parse(data[1]));
  }

  @override
  String toString() {
    return 'Name: $name, Age: $age';
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound(); // Output: Woof!
  dog.breathe(); // Output: Dog is breathing...

  // Demonstrate loop
  print('Counting to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Initializing Person from a file
  File file = File('person.txt');
  if (file.existsSync()) {
    Person person = Person.fromFile(file);
    print(person); // Output: Name: John Doe, Age: 30
  } else {
    print('File not found.');
  }
}
