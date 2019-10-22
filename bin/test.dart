import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(
        transposeMatrix([
          [1, 1, 1],
          [2, 2, 2],
          [3, 3, 3]
        ]),
        [
          [1, 2, 3],
          [1, 2, 3],
          [1, 2, 3]
        ]);
    expect(
        transposeMatrix([
          [1, 1, 1],
          [2, 2, 2],
        ]),
        [
          [1, 2],
          [1, 2],
          [1, 2]
        ]);
    expect(
        transposeMatrix([
          [1]
        ]),
        [
          [1]
        ]);
  });

  test("test case 2", () {
    expect(eratosthenes(10), [2, 3, 5, 7]);
    expect(eratosthenes(2), [2]);
    expect(eratosthenes(-1), [null]);
    expect(eratosthenes(0), [null]);
  });
}
