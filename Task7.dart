void main() {
  print('--- Task 1: BankAccount ---');
  var account = BankAccount(100.0);
  account.deposit(50.0);
  account.withdraw(30.0);
  account.withdraw(200.0); 
  print('Final Balance: \$${account.balance}\n');

  print('--- Task 2: Student ---');
  var student = Student('Omar', 85);
  print('Student: ${student.name}, Grade: ${student.grade}');
  student.grade = 105; 
  student.grade = 95;  
  print('Updated Grade: ${student.grade}\n');

  print('--- Task 3: Vehicle & Car ---');
  var myCar = Car('Toyota', 180, 4);
  myCar.describe();
  print('');

  print('--- Task 4: Animal & Dog ---');
  var myDog = Dog('Buddy', 'Golden Retriever');
  print('Dog Name: ${myDog.name}, Breed: ${myDog.breed}\n');

  print('--- Task 5: Shape, Rectangle & Circle ---');
  Shape rect = Rectangle(5.0, 4.0);
  Shape circle = Circle(3.0);
  print('Rectangle Area: ${rect.area()}');
  print('Circle Area: ${circle.area().toStringAsFixed(2)}\n');

  print('--- Task 6: Employee & Developer ---');
  Developer dev = Developer('Sarah', 12000);
  dev.introduce();
  dev.work();
  print('');

  print('--- Task 7: Flyable, Swimmable & Duck ---');
  Duck duck = Duck();
  duck.fly();
  duck.swim();
  print('');

  print('--- Task 8: Drawable, Square & Triangle ---');
  Drawable square = Square('Red');
  Drawable triangle = Triangle('Blue');
  square.draw();
  print('Square Color: ${square.getColor()}');
  triangle.draw();
  print('Triangle Color: ${triangle.getColor()}\n');

  print('--- Task 9: Counter Test ---');
  var counter = Counter();
  print('Initial Count: ${counter.count}');
  counter.increment();
  counter.increment();
  print('After 2 Increments: ${counter.count}');
  counter.decrement();
  print('After 1 Decrement: ${counter.count}');
  counter.decrement();
  counter.decrement(); 
  print('After 2 more Decrements: ${counter.count}');
  counter.increment();
  counter.reset();
  print('After Reset: ${counter.count}');
}

// 1
class BankAccount {
  double _balance;

  BankAccount([double initialBalance = 0.0]) : _balance = initialBalance;
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$$amount');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive.');
    } else if (amount > _balance) {
      print('Insufficient balance! Cannot withdraw \$$amount');
    } else {
      _balance -= amount;
      print('Withdrew: \$$amount');
    }
  }
}

// 2
class Student {
  String _name;
  double _grade;

  Student(this._name, double grade) : _grade = 0 {
    this.grade = grade; 
  }

  String get name => _name;
  double get grade => _grade;
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print('Invalid grade! Grade must be between 0 and 100.');
    }
  }
}

// 3
class Vehicle {
  String brand;
  double speed;

  Vehicle(this.brand, this.speed);

  void describe() {
    print('Brand: $brand, Speed: $speed km/h');
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, double speed, this.doors) : super(brand, speed);

  @override
  void describe() {
    print('Brand: $brand, Speed: $speed km/h, Doors: $doors');
  }
}

// 4
class Animal {
  String name;

  Animal(this.name);
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);
}

// 5
abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.141592653589793 * radius * radius;
}

// 6
abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void introduce() {
    print('Hello, my name is $name and my salary is \$$salary.');
  }

  void work(); 
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('$name is writing and debugging Dart code.');
  }
}

// 7
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print('The duck is flying through the air.');
  }

  @override
  void swim() {
    print('The duck is swimming in the water.');
  }
}
// 8
abstract class Drawable {
  void draw();
  String getColor();
}

class Square implements Drawable {
  String color;

  Square(this.color);

  @override
  void draw() {
    print('Drawing a Square');
  }

  @override
  String getColor() => color;
}

class Triangle implements Drawable {
  String color;

  Triangle(this.color);

  @override
  void draw() {
    print('Drawing a Triangle');
  }

  @override
  String getColor() => color;
}

// 9
class Counter {
  int _count = 0;

  // Getter
  int get count => _count;

  void increment() {
    _count++;
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    } else {
      print('Count cannot go below 0.');
    }
  }

  void reset() {
    _count = 0;
  }
}