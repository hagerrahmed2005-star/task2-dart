void main() {
  //q 1
  print('--- Question 1 ---');
  for (int i = 1; i <= 20; i++) {
    print(i);
  }

  //q 2.
  print('\n--- Question 2 ---');
  List<String> favoriteFoods = [
    'Pizza',
    'Burger',
    'Pasta',
    'Shawarma',
    'Koshary',
  ];
  for (String food in favoriteFoods) {
    print(food);
  }

  // q3
  print('\n--- Question 3 ---');
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int number in numbers) {
    if (number % 2 == 0) {
      print(number);
    }
  }

  //q 4
  print('\n--- Question 4 ---');
  int dayNumber = 1;
  switch (dayNumber) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid Day');
  }

  // q5
  print('\n--- Question 5 ---');
  List<int> myNumbers = [15, 42, 8, 99, 23];
  int biggest = myNumbers[0];
  for (int num in myNumbers) {
    if (num > biggest) {
      biggest = num;
    }
  }
  print('The biggest number is: $biggest');

  // q6
  print('\n--- Question 6 ---');
  int count = 0;
  while (count < 10) {
    print('Hello');
    count++;
  }

  // q7
  print('\n--- Question 7 ---');
  List<String> students = ['Ahmed', 'Mona', 'Ali', 'Sara', 'Omar'];
  for (int i = 0; i < students.length; i++) {
    switch (i) {
      case 0:
        print('First student: ${students[i]}');
        break;
      case 1:
        print('Second student: ${students[i]}');
        break;
      case 2:
        print('Third student: ${students[i]}');
        break;
      case 3:
        print('Fourth student: ${students[i]}');
        break;
      case 4:
        print('Fifth student: ${students[i]}');
        break;
      default:
        print('Student ${i + 1}: ${students[i]}');
    }
  }
}
