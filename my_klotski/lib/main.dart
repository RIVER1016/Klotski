import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Klotski",
      home: Scaffold(
        body: GameWidget(),
      ),
    ),
  );
}

class BoardGridWidget extends StatelessWidget {
  final _GameWidgetState _state;
  static CellWidget horizontalBox;
  static CellWidget verticalBox_1;
  static CellWidget verticalBox_2;
  static CellWidget verticalBox_3;
  static CellWidget verticalBox_4;
  static CellWidget leadBox;
  static CellWidget box_1;
  static CellWidget box_2;
  static CellWidget box_3;
  static CellWidget box_4;
  setLimit(int i, double width) {
    return i * width + _state.cellPadding * (i + 1);
  }

  void initBox(double width, int layoutChoose) {
    switch (layoutChoose) {
      case 1:
        horizontalBox = CellWidget(
          state: _state,
          warriorType: 2,
          perWidth: width,
          left: setLimit(1, width),
          top: setLimit(2, width),
          width: 2 * width + _state.cellPadding,
          height: width,
          color: Colors.green[300],
          text: Text(
            "2",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_1 = CellWidget(
          state: _state,
          warriorType: 4,
          perWidth: width,
          left: setLimit(0, width),
          top: setLimit(0, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "4",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_2 = CellWidget(
          state: _state,
          warriorType: 5,
          perWidth: width,
          left: setLimit(3, width),
          top: setLimit(0, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "5",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_3 = CellWidget(
          state: _state,
          warriorType: 6,
          perWidth: width,
          left: setLimit(0, width),
          top: setLimit(2, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "6",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_4 = CellWidget(
          state: _state,
          warriorType: 7,
          perWidth: width,
          left: setLimit(3, width),
          top: setLimit(2, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "7",
            style: new TextStyle(fontSize: 40),
          ),
        );
        leadBox = CellWidget(
          state: _state,
          warriorType: 3,
          perWidth: width,
          left: setLimit(1, width),
          top: setLimit(0, width),
          width: 2 * width + _state.cellPadding,
          height: 2 * width + _state.cellPadding,
          color: Colors.red[400],
          text: Text(
            "3",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_1 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(1, width),
          top: setLimit(3, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_2 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(2, width),
          top: setLimit(3, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_3 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(0, width),
          top: setLimit(4, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_4 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(3, width),
          top: setLimit(4, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        break;
      case 2:
        horizontalBox = CellWidget(
          state: _state,
          warriorType: 2,
          perWidth: width,
          left: setLimit(2, width),
          top: setLimit(2, width),
          width: 2 * width + _state.cellPadding,
          height: width,
          color: Colors.green[300],
          text: Text(
            "2",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_1 = CellWidget(
          state: _state,
          warriorType: 4,
          perWidth: width,
          left: setLimit(0, width),
          top: setLimit(0, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "4",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_2 = CellWidget(
          state: _state,
          warriorType: 5,
          perWidth: width,
          left: setLimit(1, width),
          top: setLimit(0, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "5",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_3 = CellWidget(
          state: _state,
          warriorType: 6,
          perWidth: width,
          left: setLimit(2, width),
          top: setLimit(0, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "6",
            style: new TextStyle(fontSize: 40),
          ),
        );
        verticalBox_4 = CellWidget(
          state: _state,
          warriorType: 7,
          perWidth: width,
          left: setLimit(3, width),
          top: setLimit(0, width),
          width: width,
          height: 2 * width + _state.cellPadding,
          color: Colors.blue[300],
          text: Text(
            "7",
            style: new TextStyle(fontSize: 40),
          ),
        );
        leadBox = CellWidget(
          state: _state,
          warriorType: 3,
          perWidth: width,
          left: setLimit(0, width),
          top: setLimit(3, width),
          width: 2 * width + _state.cellPadding,
          height: 2 * width + _state.cellPadding,
          color: Colors.red[400],
          text: Text(
            "3",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_1 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(0, width),
          top: setLimit(2, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_2 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(1, width),
          top: setLimit(2, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_3 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(3, width),
          top: setLimit(3, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        box_4 = CellWidget(
          state: _state,
          warriorType: 1,
          perWidth: width,
          left: setLimit(3, width),
          top: setLimit(4, width),
          width: width,
          height: width,
          color: Colors.yellow[300],
          text: Text(
            "1",
            style: new TextStyle(fontSize: 40),
          ),
        );
        break;
    }
  }

  BoardGridWidget(this._state);
  @override
  Widget build(BuildContext context) {
    Size boardSize = _state.boardSize();
    double width =
        (boardSize.width - (_state.column + 1) * _state.cellPadding) /
            _state.column;
    List<CellWidget> _backgroundBox = List<CellWidget>();
    initBox(width, 1);
    _backgroundBox.add(verticalBox_1);
    _backgroundBox.add(verticalBox_2);
    _backgroundBox.add(verticalBox_3);
    _backgroundBox.add(verticalBox_4);
    _backgroundBox.add(leadBox);
    _backgroundBox.add(horizontalBox);
    _backgroundBox.add(box_1);
    _backgroundBox.add(box_2);
    _backgroundBox.add(box_3);
    _backgroundBox.add(box_4);

    return Positioned(
        left: 0.0,
        top: 0.0,
        child: Container(
          width: _state.boardSize().width,
          height: _state.boardSize().height,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Stack(
            children: _backgroundBox,
          ),
        ));
  }
}

class GameWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GameWidgetState();
  }
}

class _GameWidgetState extends State<GameWidget> {
  MediaQueryData _queryData;
  final int row = 5;
  final int column = 4;
  final double cellPadding = 5.0;
  final EdgeInsets _gameMargin = EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0);
  static int step = 0;
  static List<List<int>> board = List<List<int>>();
  List<Widget> children = List<Widget>();
  void newGame() {
    setState(() {
      CellWidget._isGameOver = false;
      CellWidget.step = 0
      ;});
  }
  void gameWin(List<List<int>> newBoard){
    if (_GameWidgetState.board[4][2] == 3 && _GameWidgetState.board[5][3] == 3)
    setState(() {
      CellWidget._isGameOver=true;
    });
}
  void initBoard() {
    List<int> boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);

    boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);

    boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);

    boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);

    boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);

    boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);

    boardRow = List<int>();
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    boardRow.add(-1);
    board.add(boardRow);
  }

  void initLayout(int i) {
    switch (i) {
      case 1:
        board[1][1] = 4;
        board[1][2] = 3;
        board[1][3] = 3;
        board[1][4] = 5;

        board[2][1] = 4;
        board[2][2] = 3;
        board[2][3] = 3;
        board[2][4] = 5;

        board[3][1] = 6;
        board[3][2] = 2;
        board[3][3] = 2;
        board[3][4] = 7;

        board[4][1] = 6;
        board[4][2] = 1;
        board[4][3] = 1;
        board[4][4] = 7;

        board[5][1] = 1;
        board[5][2] = 0;
        board[5][3] = 0;
        board[5][4] = 1;
        break;
      case 2:
        board[1][1] = 4;
        board[1][2] = 5;
        board[1][3] = 6;
        board[1][4] = 7;

        board[2][1] = 4;
        board[2][2] = 5;
        board[2][3] = 6;
        board[2][4] = 7;

        board[3][1] = 1;
        board[3][2] = 1;
        board[3][3] = 2;
        board[3][4] = 2;

        board[4][1] = 3;
        board[4][2] = 3;
        board[4][3] = 0;
        board[4][4] = 1;

        board[5][1] = 3;
        board[5][2] = 3;
        board[5][3] = 0;
        board[5][4] = 1;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _queryData = MediaQuery.of(context);
    initBoard();
    initLayout(1);
    children.add(BoardGridWidget(this));
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  color: Colors.orange[100],
                  width: 130.0,
                  height: 60.0,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "计步",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          CellWidget.step.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  )),
              FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Container(
                    width: 130.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[400],
                      ),
                    ),
                    child: Center(
                      child: Text("新游戏"),
                    )),
                onPressed: () {
                  newGame();
                },
              ),
            ],
          ),
        ),
        Container(
          height: 50.0,
          child: Opacity(
            opacity: CellWidget._isGameOver ? 1.0 : 0.0,
            child: Center(
              child: Text("Game Win!",
                  style: TextStyle(
                    fontSize: 24.0,
                  )),
            ),
          ),
        ),
        Container(
            margin: _gameMargin,
            width: _queryData.size.width,
            height:
                (_queryData.size.width - _gameMargin.left - _gameMargin.right) *
                    row /
                    column,
            child: GestureDetector(
              child: Stack(
                children: children,
              ),
            )),
      ],
    );
  }

  Size boardSize() {
    assert(_queryData != null);
    Size size = _queryData.size;
    num width = size.width - _gameMargin.left - _gameMargin.right;
    num height = size.height - _gameMargin.left - _gameMargin.right;
    return Size(width, height);
  }
}

class CellWidget extends StatefulWidget {
  final _GameWidgetState state;
  final double perWidth;
  final double cellPadding = 5.0;
  final double width;
  final double height;
  final Color color;
  final Text text;
  final int warriorType;
  bool _isDragging = false;
  static bool _isGameOver = false;
  static List upDownLeftRight = [-1, -1, -1, -1];
  static int step = 0;
  double top;
  double left;
  CellWidget({this.state,
      this.warriorType,
      this.perWidth,
      this.width,
      this.height,
      this.color,
      this.text,
      this.left,
      this.top});

  @override
  _CellWidgetState createState() => new _CellWidgetState();
}

class _CellWidgetState extends State<CellWidget> {
  setLimit(int i) {
    return i * widget.perWidth + widget.cellPadding * (i + 1);
  }

  void isPositionAvailable(List<List<int>> board, int type, int left, int top) {
    switch (type) {
      case 1:
        if (board[top - 1][left] == 0) //上
          CellWidget.upDownLeftRight[0] = 1;
        else
          CellWidget.upDownLeftRight[0] = -1;
        if (board[top + 1][left] == 0) //下
          CellWidget.upDownLeftRight[1] = 1;
        else
          CellWidget.upDownLeftRight[1] = -1;
        if (board[top][left - 1] == 0) //左
          CellWidget.upDownLeftRight[2] = 1;
        else
          CellWidget.upDownLeftRight[2] = -1;
        if (board[top][left + 1] == 0) //右
          CellWidget.upDownLeftRight[3] = 1;
        else
          CellWidget.upDownLeftRight[3] = -1;
        break;
      case 2:
        if (board[top - 1][left] == 0 && board[top - 1][left + 1] == 0) //上
          CellWidget.upDownLeftRight[0] = 1;
        else
          CellWidget.upDownLeftRight[0] = -1;
        if (board[top + 1][left] == 0 && board[top + 1][left + 1] == 0) //下
          CellWidget.upDownLeftRight[1] = 1;
        else
          CellWidget.upDownLeftRight[1] = -1;
        if (board[top][left - 1] == 0) //左
          CellWidget.upDownLeftRight[2] = 1;
        else
          CellWidget.upDownLeftRight[2] = -1;
        if (board[top][left + 2] == 0) //右
          CellWidget.upDownLeftRight[3] = 1;
        else
          CellWidget.upDownLeftRight[3] = -1;
        break;

      case 3:
        if (board[top - 1][left] == 0 && board[top - 1][left + 1] == 0) //上
          CellWidget.upDownLeftRight[0] = 1;
        else
          CellWidget.upDownLeftRight[0] = -1;
        if (board[top + 2][left] == 0 && board[top + 2][left + 1] == 0) //下
          CellWidget.upDownLeftRight[1] = 1;
        else
          CellWidget.upDownLeftRight[1] = -1;
        if (board[top][left - 1] == 0 && board[top + 1][left - 1] == 0) //左
          CellWidget.upDownLeftRight[2] = 1;
        else
          CellWidget.upDownLeftRight[2] = -1;
        if (board[top][left + 2] == 0 && board[top + 1][left + 2] == 0) //右
          CellWidget.upDownLeftRight[3] = 1;
        else
          CellWidget.upDownLeftRight[3] = -1;
        break;
      default:
        if (board[top - 1][left] == 0) //上
          CellWidget.upDownLeftRight[0] = 1;
        else
          CellWidget.upDownLeftRight[0] = -1;
        if (board[top + 2][left] == 0) //下
          CellWidget.upDownLeftRight[1] = 1;
        else
          CellWidget.upDownLeftRight[1] = -1;
        if (board[top][left - 1] == 0 && board[top + 1][left - 1] == 0) //左
          CellWidget.upDownLeftRight[2] = 1;
        else
          CellWidget.upDownLeftRight[2] = -1;
        if (board[top][left + 1] == 0 && board[top + 1][left + 1] == 0) //右
          CellWidget.upDownLeftRight[3] = 1;
        else
          CellWidget.upDownLeftRight[3] = -1;
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    double r = (widget.left - widget.cellPadding) /
            (widget.perWidth + widget.cellPadding) +
        0.1;
    int intr = r.toInt() + 1;
    double c = (widget.top - widget.cellPadding) /
            (widget.perWidth + widget.cellPadding) +
        0.1;
    int intc = c.toInt() + 1;
//    print(widget.warriorType.toString()+"坐标：("+intr.toString()+","+intc.toString()+");");
    double topDown = widget.top + widget.perWidth + widget.cellPadding;
    double topUp = widget.top - widget.perWidth - widget.cellPadding;
    double leftRight = widget.left + widget.perWidth + widget.cellPadding;
    double leftLeft = widget.left - widget.perWidth - widget.cellPadding;
    int addStep =_GameWidgetState.step+ 1;
    for (int i = 0; i < 7; i++) {
      print(_GameWidgetState.board[i]);
    }
    return Stack(
      children: <Widget>[
        Positioned(
          left: widget.left,
          top: widget.top,
          child: GestureDetector(
            child: CellBox(
              width: widget.width,
              height: widget.height,
              color: widget.color,
              text: widget.text,
            ),

            //垂直方向拖动事件
            onVerticalDragUpdate: (detail) {
              if (detail.delta.distance == 0 || widget._isDragging) {
                return;
              }
              widget._isDragging = true;
              if (detail.delta.direction > 0) {
                isPositionAvailable(
                    _GameWidgetState.board, widget.warriorType, intr, intc);
                print(CellWidget.upDownLeftRight);
                if (CellWidget.upDownLeftRight[1] == 1) {
                  if (widget.warriorType == 2) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc][intr + 1] = 0;
                    _GameWidgetState.board[intc + 1][intr] = widget.warriorType;
                    _GameWidgetState.board[intc + 1][intr + 1] =
                        widget.warriorType;
                  } else if (widget.warriorType == 3) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc][intr + 1] = 0;
                    _GameWidgetState.board[intc + 2][intr] = widget.warriorType;
                    _GameWidgetState.board[intc + 2][intr + 1] =
                        widget.warriorType;
                  } else if (widget.warriorType == 1) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc + 1][intr] = widget.warriorType;
                  } else {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc + 1][intr] = widget.warriorType;
                    _GameWidgetState.board[intc + 2][intr] = widget.warriorType;
                  }
                  setState(() {
                    widget.top = topDown;
                    CellWidget.step = addStep;
                    print(CellWidget.step);
                    print("下移一格");
                  });
                  widget.state.gameWin(_GameWidgetState.board);
                }
              } else {
                isPositionAvailable(
                    _GameWidgetState.board, widget.warriorType, intr, intc);
                if (CellWidget.upDownLeftRight[0] == 1) {
                  if (widget.warriorType == 3) {
                    _GameWidgetState.board[intc + 1][intr + 1] = 0;
                    _GameWidgetState.board[intc + 1][intr] = 0;
                    _GameWidgetState.board[intc - 1][intr] = widget.warriorType;
                    _GameWidgetState.board[intc - 1][intr + 1] =
                        widget.warriorType;
                  } else if (widget.warriorType == 2) {
                    _GameWidgetState.board[intc][intr + 1] = 0;
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc - 1][intr] = widget.warriorType;
                    _GameWidgetState.board[intc - 1][intr + 1] =
                        widget.warriorType;
                  } else if (widget.warriorType == 1) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc - 1][intr] = widget.warriorType;
                    addStep =CellWidget.step+ 1;
                  } else {
                    _GameWidgetState.board[intc + 1][intr] = 0;
                    _GameWidgetState.board[intc - 1][intr] = widget.warriorType;
                    addStep =CellWidget.step+ 1;
                  }
                  setState(() {
                    widget.top = topUp;
                    _GameWidgetState.step = addStep;
                    print(CellWidget.step);
                    print("上移一格");
                  });
                  widget.state.gameWin(_GameWidgetState.board);
                }
              }
            },
            onVerticalDragEnd: (detail) {
              widget._isDragging = false;
            },
            onVerticalDragCancel: () {
              widget._isDragging = false;
            },
            onHorizontalDragUpdate: (detail) {
              if (detail.delta.distance == 0 || widget._isDragging) {
                return;
              }
              widget._isDragging = true;
              if (detail.delta.direction > 0) {
                isPositionAvailable(
                    _GameWidgetState.board, widget.warriorType, intr, intc);
                print(CellWidget.upDownLeftRight);
                if (CellWidget.upDownLeftRight[2] == 1) {
                  if (widget.warriorType == 3) {
                    _GameWidgetState.board[intc][intr + 1] = 0;
                    _GameWidgetState.board[intc + 1][intr + 1] = 0;
                    _GameWidgetState.board[intc][intr - 1] = widget.warriorType;
                    _GameWidgetState.board[intc + 1][intr - 1] =
                        widget.warriorType;
                  } else if (widget.warriorType == 2) {
                    _GameWidgetState.board[intc][intr + 1] = 0;
                    _GameWidgetState.board[intc][intr - 1] = widget.warriorType;
                  } else if (widget.warriorType == 1) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc][intr - 1] = widget.warriorType;
                  } else {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc + 1][intr] = 0;
                    _GameWidgetState.board[intc][intr - 1] = widget.warriorType;
                    _GameWidgetState.board[intc + 1][intr - 1] =
                        widget.warriorType;
                  }
                  setState(() {
                    widget.left = leftLeft;
                    _GameWidgetState.step = addStep;
                    print(CellWidget.step);
                    print("左移一格");
                  });
                  widget.state.gameWin(_GameWidgetState.board);
                }
              } else {
                isPositionAvailable(
                    _GameWidgetState.board, widget.warriorType, intr, intc);
                print(CellWidget.upDownLeftRight);
                if (CellWidget.upDownLeftRight[3] == 1) {
                  if (widget.warriorType == 3) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc + 1][intr] = 0;
                    _GameWidgetState.board[intc][intr + 2] = widget.warriorType;
                    _GameWidgetState.board[intc + 1][intr + 2] =
                        widget.warriorType;
                  } else if (widget.warriorType == 2) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc][intr + 2] = widget.warriorType;
                    _GameWidgetState.board[intc][intr + 1] = widget.warriorType;
                  } else if (widget.warriorType == 1) {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc][intr + 1] = widget.warriorType;
                  } else {
                    _GameWidgetState.board[intc][intr] = 0;
                    _GameWidgetState.board[intc + 1][intr] = 0;
                    _GameWidgetState.board[intc][intr + 1] = widget.warriorType;
                    _GameWidgetState.board[intc + 1][intr + 1] =
                        widget.warriorType;
                  }
                  setState(() {
                    widget.left = leftRight;
                    _GameWidgetState.step =addStep;
                    print(CellWidget.step);
                    print("右移一格");
                  });
                  widget.state.gameWin(_GameWidgetState.board);
                }
              }
            },
            onHorizontalDragDown: (detail) {
              widget._isDragging = false;
            },
            onHorizontalDragCancel: () {
              widget._isDragging = false;
            },
          ),
        ),
      ],
    );
  }
}

class CellBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Text text;
  CellBox({this.width, this.height, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Center(
          child: text,
        ));
  }
}
