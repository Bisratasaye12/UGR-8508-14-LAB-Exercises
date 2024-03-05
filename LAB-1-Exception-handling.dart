void divide(int a, int b) {
  if (b == 0) {
    throw Exception('Cannot divide by zero');
  }
  print(a / b);
}

void calculateArea(int width, int height) {
  if (width < 0 || height < 0) {
    throw FormatException('Dimensions cannot be negative');
  }
  print(width * height);
}

void writeData() {
  try {
    // Simulate file opening and writing
    print('Writing data to file...');
    throw Exception('Write error'); // Simulate a write error
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Closing file'); // This code always runs
  }
}

void main() {
  // Exercise 1
  try {
    divide(10, 0);
  } catch (e) {
    print('Error (Exercise 1): $e');
  }

  // Exercise 2
  try {
    calculateArea(-5, 10);
  } on FormatException catch (e) {
    print('Format exception (Exercise 2): $e');
  } catch (e) {
    print('Other exception (Exercise 2): $e');
  }

  // Exercise 3
  writeData();
}
