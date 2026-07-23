void main() {
  
  // Task 1 
  print('--- Task 1 ---');
  for (int i = 1; i <= 30; i++) {
    if (i % 3 == 0) {
      print('Fizz');
    } else {
      print(i);
    }
  }

  // Task 2 
  print('\n--- Task 2 ---');
  List<String> fruits = ['apple', 'banana', 'mango', 'kiwi'];
  for (int i = 0; i < fruits.length; i++) {
    print('$i: ${fruits[i]}');
  }


  // Task 3 
  
  print('\n--- Task 3 ---');
  List<int> scores = [55, 82, 90, 43, 77];
  int sum = 0;

  for (int score in scores) {
    sum += score;
  }

  double average = sum / scores.length;
  print('Sum: $sum');
  print('Average: $average');

  
  // Task 4 
  print('\n--- Task 4 ---');
  Map<String, int> ages = {
    'Sara': 20,
    'Omar': 23,
    'Laila': 19,
  };

  ages.forEach((name, age) {
    print('$name is $age years old');
  });

  
  // Task 5
  
  print('\n--- Task 5 ---');
  List<int> numbers = [12, 45, 3, 89, 21, 67];
  int maxNumber = numbers[0];

  for (int number in numbers) {
    if (number > maxNumber) {
      maxNumber = number;
    }
  }
  print('Largest number: $maxNumber');

  
  // Task 6 
  print('\n--- Task 6 ---');
  List<Map<String, dynamic>> productsTask6 = [
    {'name': 'Book', 'price': 40},
    {'name': 'Pen', 'price': 5},
    {'name': 'Bag', 'price': 120},
  ];

  num totalPriceTask6 = 0;

  for (var product in productsTask6) {
    print('Product: ${product['name']}, Price: ${product['price']}');
    totalPriceTask6 += product['price'];
  }
  print('Total Price: $totalPriceTask6');

  
  // Bonus
  print('\n--- Bonus Task ---');
  List<Map<String, dynamic>> productsBonus = [
    {'name': 'Book', 'price': 40, 'qty': 2},
    {'name': 'Pen', 'price': 5, 'qty': 10},
    {'name': 'Bag', 'price': 120, 'qty': 1},
  ];

  num overallTotalCost = 0;
  num highestCost = 0;
  String highestCostItemName = '';

  for (var product in productsBonus) {
    num itemTotalCost = product['price'] * product['qty'];
    overallTotalCost += itemTotalCost;

    if (itemTotalCost > highestCost) {
      highestCost = itemTotalCost;
      highestCostItemName = product['name'];
    }
  }

  print('Overall Total Cost: $overallTotalCost');
  print('Item with highest total cost: $highestCostItemName ($highestCost)');
}