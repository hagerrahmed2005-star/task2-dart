// Task 1
double calculateRectangleArea(double width, double height) {
  return width * height;
}

// Task 2

bool isPalindrome(String text) {
  String cleanedText = text.toLowerCase().replaceAll(' ', '');

  String reversedText = cleanedText.split('').reversed.join('');

  return cleanedText == reversedText;
}

// Task 3
String buildUserProfile(String name, {int age = 18, String city = 'Cairo'}) {
  return "Name: $name, Age: $age, City: $city";
}

// Task 4
List<int> filterNumbers(List<int> nums, bool Function(int) test) {
  List<int> result = [];
  for (int number in nums) {
    if (test(number)) {
      result.add(number);
    }
  }
  return result;
}

// Main Function — Testing all tasks
void main() {
  print('--- Task 1 Result ---');
  double area = calculateRectangleArea(5.5, 4.0);
  print('Rectangle Area: $area');

  print('\n--- Task 2 Result ---');
  print('Is "Race car" a palindrome? ${isPalindrome("Race car")}');
  print('Is "Dart" a palindrome? ${isPalindrome("Dart")}');

  print('\n--- Task 3 Result ---');

  print(buildUserProfile('Ali'));
  print(buildUserProfile('SARA', age: 25, city: 'Alexandria'));

  print('\n--- Task 4 Result ---');
  List<int> numbers = [2, 5, 8, 11, 14, 20, 3];

  List<int> evenNumbers = filterNumbers(numbers, (n) => n % 2 == 0);
  print('Even numbers: $evenNumbers');

  List<int> greaterThanTen = filterNumbers(numbers, (n) => n > 10);
  print('Numbers > 10: $greaterThanTen');
}
