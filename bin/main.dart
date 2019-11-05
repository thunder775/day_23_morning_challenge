// Challenge 1
// Write test cases for the given challenges

// Challenge - Conway's Game of Life
// https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Rules
// The Game of Life, also known simply as Life, is a cellular automaton devised
// by the British mathematician John Horton Conway in 1970.
// Write a function which performs one step of the life algorithm
List<List<int>> gameOfLife(List<List<int>> board) {
  List<List<int>> resultBoard = [];
  for (int i = 0; i < board.length; i++) {
    List<int> resultRow = [];
    for (int j = 0; j < board[i].length; j++) {
      if (board[i][j] == 1 &&
          (checkAround(board, i, j) == 2 || checkAround(board, i, j) == 3)) {
        resultRow.add(1);
      } else if (checkAround(board, i, j) == 3) {
        resultRow.add(1);
      } else {
        resultRow.add(0);
      }
    }
    resultBoard.add(resultRow);
    resultRow = [];
  }
  print(resultBoard);
//  gameOfLife(resultBoard);
  return resultBoard;
}

int checkAround(List<List<int>> board, int i, int j) {
  int count = 0;
  for (int offsetX = -1; offsetX <= 1; offsetX++) {
    for (int offsetY = -1; offsetY <= 1; offsetY++) {
      if(offsetY==0&&offsetX==0){
        continue;
      }
      if (isAlive(board, i + offsetX, offsetY + j)) {
        count++;
      }
    }
  }
//  print(count);
  return count;
}

bool isAlive(List<List<int>> board, int i, int j) {
  if (i < 0 || j < 0 || i >= board.length || j >= board[i].length) {
    return false;
  } else {
    return (board[i][j] == 1);
  }
}

main() {
  checkAround([
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [0, 1, 0, 1],
    [1, 1, 0, 0],
  ], 3, 3);

  gameOfLife([
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [0, 1, 0, 1],
    [1, 1, 0, 0],
  ]);
}
