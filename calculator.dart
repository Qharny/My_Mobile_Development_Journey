import 'dart:io';

class Calculator {
  double _firstNumber;
  double _secondNumber;

  Calculator(this._firstNumber, this._secondNumber);

  double add() {
    return _firstNumber + _secondNumber;
  }

  double subtract() {
    return _firstNumber - _secondNumber;
  }

  double multiply() {
    return _firstNumber * _secondNumber;
  }

  double divide() {
    if (_secondNumber != 0) {
      return _firstNumber / _secondNumber;
    } else {
      print("Error: Division by zero!");
      return double.nan;
    }
  }
}

void main() {
  print("Enter the first number: ");
  double? firstNumber = double.tryParse(stdin.readLineSync() ?? '');

  if (firstNumber == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  print("Enter the second number: ");
  double? secondNumber = double.tryParse(stdin.readLineSync() ?? '');

  if (secondNumber == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  Calculator calculator = Calculator(firstNumber, secondNumber);

  print("Select an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");

  var choice = stdin.readLineSync();

  if (choice != null) {
    switch (choice) {
      case '1':
        print("Result: ${calculator.add()}");
        break;
      case '2':
        print("Result: ${calculator.subtract()}");
        break;
      case '3':
        print("Result: ${calculator.multiply()}");
        break;
      case '4':
        print("Result: ${calculator.divide()}");
        break;
      default:
        print("Invalid choice. Please select a valid operation.");
    }
  } else {
    print("Invalid choice. Please select a valid operation.");
  }
}
