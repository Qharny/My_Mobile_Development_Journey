// using function in dart to create a simple calculator.

// first, import the i/o
import 'dart:io';

// Functions for the Operations
int sum(int a, int b) {
  return a + b; // addition function
}

int subtract(int a, int b) {
  return a - b; // subtracton function
}

int multiply(int a, int b) {
  return a * b; // multiplication function
}

double divide(int a, int b) {
  if (b != 0) {
    return a / b.toDouble();
  } else {
    print("Error: Division by zero!");
    return double.nan; // Return NaN for division by zero error
  }
}

// Get 2 numbers
void main() {
  print("Enter a number: ");
  String? firstNumberInput = stdin.readLineSync();
  int? firstNumber = int.tryParse(firstNumberInput ?? '');
  print("Enter another number: ");
  String? secondNumberInput = stdin.readLineSync();
  int? secondNumber = int.tryParse(secondNumberInput ?? '');


  print("※※※※※※※※※※※※");
  print(
      " Select an Operation. \n1. Addition \n2.Division \n3.Multiplication \n4. Subtraction");
  var operation = stdin.readLineSync();

}
