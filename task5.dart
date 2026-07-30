// Task 1
class Person {
  String name;
  int age;
  String city;

  Person(this.name, this.age, this.city);

  void printInfo() {
    print('Name: $name, Age: $age, City: $city');
  }
}

// Task 2
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

// Task 3
class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  BankAccount.empty(this.owner) : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
    print('$owner deposited: $amount, New balance: $balance');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('$owner withdrew: $amount, New balance: $balance');
    } else {
      print('Not enough balance for $owner');
    }
  }
}

// Task 4
class Student {
  String name;
  List<double> grades;

  Student(this.name, this.grades);

  double average() {
    if (grades.isEmpty) return 0.0;

    double total = 0.0;
    for (double grade in grades) {
      total += grade;
    }
    return total / grades.length;
  }

  String status() {
    if (average() >= 60) {
      return 'Pass';
    } else {
      return 'Fail';
    }
  }
}

// Task 5
class Product {
  String name;
  double price;
  bool inStock;

  Product(this.name, this.price, {this.inStock = true});

  Product.outOfStock(this.name, this.price) : inStock = false;

  @override
  String toString() {
    String status = inStock ? 'In Stock' : 'Out of Stock';
    return 'Product: $name, Price: $price, Status: $status';
  }
}

void main() {
  // Test Task 1
  print('--- Task 1 ---');
  Person p1 = Person('Ahmed', 25, 'Cairo');
  Person p2 = Person('Sara', 22, 'Alexandria');
  p1.printInfo();
  p2.printInfo();

  // Test Task 2
  print('\n--- Task 2 ---');
  Rectangle rect = Rectangle(5.0, 10.0);
  print('Area: ${rect.area()}');
  print('Perimeter: ${rect.perimeter()}');

  // Test Task 3
  print('\n--- Task 3 ---');
  BankAccount account = BankAccount.empty('Mohamed');
  account.deposit(150.0);
  account.withdraw(50.0);

  // Test Task 4
  print('\n--- Task 4 ---');
  Student student1 = Student('Omar', [75.0, 82.5, 60.0, 90.0]);
  print('Student: ${student1.name}');
  print('Average: ${student1.average()}');
  print('Status: ${student1.status()}');

  // Test Task 5
  print('\n--- Task 5 ---');
  Product prod1 = Product('Laptop', 1200.0);
  Product prod2 = Product('Mouse', 25.0, inStock: true);
  Product prod3 = Product.outOfStock('Keyboard', 45.0);

  print(prod1);
  print(prod2);
  print(prod3);
}
