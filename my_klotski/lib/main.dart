import 'package:flutter/material.dart';
import "logic.dart";

final Map<int, Color> boxColors = <int, Color>{
  2: Colors.orange[50],
  4: Colors.orange[100],
  8: Colors.orange[200],
  16: Colors.orange[300],
  32: Colors.orange[400],
  64: Colors.orange[500],
  128: Colors.orange[600],
  256: Colors.orange[700],
  512: Colors.orange[800],
  1024: Colors.orange[900],
};
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
  BoardGridWidget(this._state);
  @override
  Widget build(BuildContext context) {
    Size boardSize = _state.boardSize();
    double width =
        (boardSize.width - (_state.column + 1) * _state.cellPadding) /
            _state.column;
    List<CellBox> _backgroundBox = List<CellBox>();
    CellBox horizontalBox = CellBox(
      width: 2*width,
      height: width,
      color: Colors.green[300],
      text: Text(
          "关羽",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox verticalBox_1 =CellBox(
      width: width,
      height: 2*width,
      color: Colors.blue[300],
      text: Text(
        "马超",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox verticalBox_2 =CellBox(
      width: width,
      height: 2*width,
      color: Colors.blue[300],
      text: Text(
        "张飞",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox verticalBox_3 =CellBox(
      width: width,
      height: 2*width,
      color: Colors.blue[300],
      text: Text(
        "黄忠",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox verticalBox_4 =CellBox(
      width: width,
      height: 2*width,
      color: Colors.blue[300],
      text: Text(
        "赵云",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox leadBox=CellBox(
      width: 2*width,
      height: 2*width,
      color: Colors.red[400],
      text: Text(
        "曹操",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox blankBox_1=CellBox(
      width: width,
      height: width,
      color: Colors.grey,
    );
    CellBox blankBox_2=CellBox(
      width: width,
      height: width,
      color: Colors.grey ,
    );
    CellBox box_1 = CellBox(
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox box_2 = CellBox(
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox box_3 = CellBox(
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );
    CellBox box_4 = CellBox(
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(
            fontSize:40
        ),
      ),
    );

//      c * width + _state.cellPadding * (c + 1)
//      r * width + _state.cellPadding * (r + 1)
    double left = 0 * width + _state.cellPadding * (0+ 1);
    double top = 0 * width + _state.cellPadding * (0 + 1);
    verticalBox_1.setLeftAndTop(left,top);

    left = 1 * width + _state.cellPadding * (1+ 1);
    top = 0 * width + _state.cellPadding * (0 + 1);
    leadBox.setLeftAndTop(left,top);

    left = 3 * width + _state.cellPadding * (3+ 1);
    top = 0 * width + _state.cellPadding * (0 + 1);
    verticalBox_2.setLeftAndTop(left,top);

    left = 0 * width + _state.cellPadding * (0+ 1);
    top = 2 * width + _state.cellPadding * (2 + 1);
    verticalBox_3.setLeftAndTop(left,top);

    left = 1 * width + _state.cellPadding * (1+ 1);
    top = 2 * width + _state.cellPadding * (2 + 1);
    horizontalBox.setLeftAndTop(left,top);

    left = 1 * width + _state.cellPadding * (1+ 1);
    top = 3 * width + _state.cellPadding * (3 + 1);
    box_1.setLeftAndTop(left,top);

    left = 2 * width + _state.cellPadding * (2+ 1);
    top = 3 * width + _state.cellPadding * (3 + 1);
    box_2.setLeftAndTop(left,top);

    left = 3 * width + _state.cellPadding *(3 + 1);
    top = 2 * width + _state.cellPadding * (2 + 1);
    verticalBox_4.setLeftAndTop(left,top);

    left = 0 * width + _state.cellPadding * (0+ 1);
    top = 4 * width + _state.cellPadding * (4 + 1);
    box_3.setLeftAndTop(left,top);

    left = 1 * width + _state.cellPadding * (1+ 1);
    top = 4 * width + _state.cellPadding * (4 + 1);
    blankBox_1.setLeftAndTop(left,top);

    left = 2 * width + _state.cellPadding * (2+ 1);
    top = 4 * width + _state.cellPadding * (4 + 1);
    blankBox_2.setLeftAndTop(left,top);

    left = 3 * width + _state.cellPadding * (3+ 1);
    top = 4 * width + _state.cellPadding * (4+ 1);
    box_4.setLeftAndTop(left,top);

    _backgroundBox.add(verticalBox_1);
    _backgroundBox.add(verticalBox_2);
    _backgroundBox.add(verticalBox_3);
    _backgroundBox.add(verticalBox_4);
    _backgroundBox.add(blankBox_1);
    _backgroundBox.add(blankBox_2);
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
  Game _game;
  MediaQueryData _queryData;
  final int row = 5;
  final int column = 4;
  final double cellPadding = 5.0;
  final EdgeInsets _gameMargin = EdgeInsets.fromLTRB(20.0, 0.0, 20.0,20.0);
  bool _isGameOver = false;

  @override
  void initState() {
    super.initState();
    _game = Game(row, column);
    newGame();
  }

  void newGame() {
    _game.init();
    _isGameOver = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<CellWidget> _cellWidgets = List<CellWidget>();
    int count = 0;
    for (int r = 0; r < row; r++) {
      for (int c = 0; c < column; c++) {
        _cellWidgets.add(CellWidget(cell: _game.get(r, c), state: this));
        count++;
      }
    }
    print(count);
    _queryData = MediaQuery.of(context);
    List<Widget> children = List<Widget>();
    children.add(BoardGridWidget(this));
    children.addAll(_cellWidgets);
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
                          "0",
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
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 50.0,
          child: Opacity(
            opacity: _isGameOver ? 1.0 : 0.0,
            child: Center(
              child: Text("Game Over!",
                  style: TextStyle(
                    fontSize: 24.0,
                  )),
            ),
          ),
        ),
        Container(
            margin: _gameMargin,
            width: _queryData.size.width,
            height: (_queryData.size.width- _gameMargin.left - _gameMargin.right)*row/column,
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

class AnimatedCellWidget extends AnimatedWidget {
  final BoardCell cell;
  final _GameWidgetState state;
  AnimatedCellWidget(
      {Key key, this.cell, this.state, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    double animationValue = animation.value;
    Size boardSize = state.boardSize();
    double width = (boardSize.width - (state.column + 1) * state.cellPadding) /
        state.column;
    if (cell.number == 0) {
      return Container();
    } else {
      return CellBox(
        left: (cell.column * width + state.cellPadding * (cell.column + 1)) +
            width / 2 * (1 - animationValue),
        top: cell.row * width +
            state.cellPadding * (cell.row + 1) +
            width / 2 * (1 - animationValue),
        width: width * animationValue,
        height: width * animationValue,
        color: boxColors.containsKey(cell.number)
            ? boxColors[cell.number]
            : boxColors[boxColors.keys.last],
        text: Text(
          cell.number.toString(),
          style: TextStyle(
            fontSize: 30.0 * animationValue,
            fontWeight: FontWeight.bold,
            color: cell.number < 32 ? Colors.grey[600] : Colors.grey[50],
          ),
        ),
      );
    }
  }
}

class CellWidget extends StatefulWidget {
  final BoardCell cell;
  final _GameWidgetState state;
  CellWidget({this.cell, this.state});
  _CellWidgetState createState() => _CellWidgetState();
}

class _CellWidgetState extends State<CellWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(
        milliseconds: 200,
      ),
      vsync: this,
    );
    animation = new Tween(begin: 0.0, end: 1.0).animate(controller);
  }


  @override
  Widget build(BuildContext context) {
    if (widget.cell.isNew && !widget.cell.isEmpty()) {
      controller.reset();
      controller.forward();
      widget.cell.isNew = false;
    } else {
      controller.animateTo(1.0);
    }
    return AnimatedCellWidget(
      cell: widget.cell,
      state: widget.state,
      animation: animation,
    );
  }
}

class CellBox extends StatelessWidget {
  double left;
  double top;
  final double width;
  final double height;
  final Color color;
  final Text text;
  CellBox({this.left, this.top, this.width,this.height,this.color, this.text});

  void setLeftAndTop(double left,double top){
    this.left=left;
    this.top=top;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child: text,
          )),
    );
  }
}
