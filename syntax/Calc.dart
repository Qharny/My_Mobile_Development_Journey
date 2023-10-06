// using function in dart to create a simple calculator.

// first, import the i/o
import 'dart:io';

// Get 2 numbers
void main() {
  print("Enter a number: ");
  var firstNumber = stdin.readLineSync();
  print("Enter another number: ");
  var secondNumber = stdin.readLineSync();

  print("※※※※※※※※※※※※");
  print(
      " Select an Operation. \n1. Addition \n2.Division \n3.Multiplication \n4. Subtraction");
}
// Functions for the Operations
int sum(int a, int b) {
  return a + b; // addition function
}

int subtract(int a, int b) {
  return a - b;
}
int multiply(int a, int b) {
  return a * b;
}
double divide(int a, int b) {
  return a / b;
}
