
// Task 1
class Car {
  String brand;
  String model;
  int year;
  Car(this.brand, this.model, this.year);


  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}


// Task 2
class Student {
  String name;
  int age;
  double grade;


  Student(this.name, this.age, this.grade);


  Student.guest()
      : name = 'Guest User',
        age = 0,
        grade = 0.0;

  void showInfo() {
    print('Name: $name, Age: $age, Grade: $grade');
  }
}

// Task 3 
class BankAccount {
  double _balance = 0.0;

  
  double get balance => _balance;


  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Invalid balance');
    }
  }
}


// Task 4 
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Some animal sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('Dog: Woof!');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('Cat: Meow!');
  }
}

// Task 5 

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Salary: \$$salary');
  }
}


// Task 6
class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

class BorrowedBook extends Book {
  bool _isBorrowed = false; // Private property

  BorrowedBook(String title, String author) : super(title, author);

  void borrowBook() {
    if (_isBorrowed) {
      print('This book is already borrowed.');
    } else {
      _isBorrowed = true;
      print('Borrowed successfully.');
    }
  }

  void returnBook() {
    if (!_isBorrowed) {
      print('This book was not borrowed.');
    } else {
      _isBorrowed = false;
      print('Book returned successfully.');
    }
  }

  void getStatus() {
    String status = _isBorrowed ? 'Borrowed' : 'Available';
    print('Current Status: $status');
  }
}


// all tasks

void main() {
  print('--- TASK 1 ---');
  Car myCar = Car('Toyota', 'Corolla', 2022);
  myCar.displayInfo();

  print('\n--- TASK 2 ---');
  Student s1 = Student('Anas', 22, 95);
  Student s2 = Student.guest();
  s1.showInfo();
  s2.showInfo();

  print('\n--- TASK 3 ---');
  BankAccount account = BankAccount();
  account.balance = 1000;
  print('Balance: ${account.balance}');
  account.balance = -500;
  print('Balance: ${account.balance}');

  print('\n--- TASK 4 ---');
  Dog dog = Dog('Buddy');
  Cat cat = Cat('Kitty');
  dog.makeSound();
  cat.makeSound();

  print('\n--- TASK 5 ---');
  Employee emp = Employee('Ahmed', 30, 5000.0);
  emp.displayInfo();

  print('\n--- TASK 6 ---');
  BorrowedBook book = BorrowedBook('Flutter Basics', 'John');
  print('Book: ${book.title}');
  print('Author: ${book.author}\n');

  book.borrowBook();
  book.borrowBook();
  book.returnBook();
  book.getStatus();
}