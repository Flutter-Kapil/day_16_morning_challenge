// Challenge 1
// Write failing tests for the next two challenges

// Challenge 2
// Matrix Transpose
// Create a function that transposes a 2D matrix.
// transposeMatrix([
//  [1, 1, 1],
//  [2, 2, 2],
//  [3, 3, 3]
//    ]) ➞ [
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3]
//  ]
List<List<dynamic>> transposeMatrix(List<List<dynamic>> matrix) {
  int row;
  int col;
  row = matrix.length;
  col = matrix[0].length;
  List<List<dynamic>> tempMatrix = List<List<dynamic>>(col);
  for (int i = 0; i < col; i++) {
    tempMatrix[i] = List(row);
  }
  print(tempMatrix);
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < row; j++) {
      tempMatrix[i][j] = matrix[j][i];
    }
  }
  matrix = tempMatrix;
  return matrix;
}

// Challenge 3
// Sieve of Eratosthenes
// Given N as input, return an array with all primes up to N included.
//  Examples
//  eratosthenes(10) ➞ [2, 3, 5, 7]
//  eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]
List<int> eratosthenes(int n) {
  List<int> result = [];
  if (n > 0) {
    for (int i = 2; i <= n; i++) {
      if (isNumberPrime(i)) {
        result.add(i);
      }
    }
  } else if (n <= 0) {
    return [null];
  }
  return result;
}

bool isNumberPrime(int x) {
  for (int i = 2; i < x; i++) {
    if (x % i == 0) {
      return false;
    }
  }

  return true;
}

main() {
  print(transposeMatrix([
    [1, 1, 1],
    [2, 2, 2],
  ]));
  print(eratosthenes(19));
}
