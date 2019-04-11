
class Game{
  final int row;
  final int column;
  int stepCount;
Game(this.row,this.column);

List<List<BoardCell>> _boardCells;
void init(){
  _boardCells = List<List<BoardCell>>();
  for (int r = 0; r < row; r++) {
    _boardCells.add(List<BoardCell>());
    for (int c = 0; c < column; c++) {
      _boardCells[r].add(BoardCell(
        row: r,
        column: c,
        number: 0,
        isNew: false,
      ));
    }
  }
  stepCount = 0;
}
  BoardCell get(int r, int c) {
    return _boardCells[r][c];
  }
}

class BoardCell {
  int row, column;
  int number = 0;
  bool isMerged = false;
  bool isNew = false;
  BoardCell({this.row, this.column, this.number, this.isNew});

  bool isEmpty() {
    return number == 0;
  }

  @override
  int get hashCode {
    return number.hashCode;
  }

  @override
  bool operator ==(other) {
    return other is BoardCell && number == other.number;
  }
}
