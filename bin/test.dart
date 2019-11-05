import 'package:test/test.dart';
import 'main.dart';

main() {
  test('Game Of Life', () {
    expect(
        gameOfLife([
          [0, 1, 0, 0],
          [0, 0, 1, 0],
          [0, 1, 0, 1],
          [1, 1, 0, 0],
        ]),
        [
          [0, 0, 0, 0],
          [0, 1, 1, 0],
          [1, 1, 0, 0],
          [1, 1, 1, 0]
        ]);
  });
}
