import 'package:flutter/material.dart';
import "logic.dart";

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
  CellWidget horizontalBox;
  CellWidget verticalBox_1;
  CellWidget verticalBox_2;
  CellWidget verticalBox_3;
  CellWidget verticalBox_4;
  CellWidget leadBox;
  CellWidget blankBox_1;
  CellWidget blankBox_2;
  CellWidget box_1;
  CellWidget box_2;
  CellWidget box_3;
  CellWidget box_4;
  void initBox(double width) {
    horizontalBox = CellWidget(
      perWidth: width,
      left:1 * width + _state.cellPadding * (1 + 1),
      top: 2 * width + _state.cellPadding * (2 + 1),
      width: 2 * width+_state.cellPadding,
      height: width,
      color: Colors.green[300],
      text: Text(
        "关羽",
        style: new TextStyle(fontSize: 40),
      ),
    );
    verticalBox_1 = CellWidget(
      perWidth: width,
      left:0 * width + _state.cellPadding * (0 + 1),
      top:  0 * width + _state.cellPadding * (0 + 1),
      width: width,
      height: 2 * width+_state.cellPadding,
      color: Colors.blue[300],
      text: Text(
        "马超",
        style: new TextStyle(fontSize: 40),
      ),
    );
    verticalBox_2 = CellWidget(
      perWidth: width,
      left:3 * width + _state.cellPadding * (3 + 1),
      top: 0 * width + _state.cellPadding * (0 + 1),
      width: width,
      height: 2 * width+_state.cellPadding,
      color: Colors.blue[300],
      text: Text(
        "张飞",
        style: new TextStyle(fontSize: 40),
      ),
    );
    verticalBox_3 = CellWidget(
      perWidth: width,
      left: 0 * width + _state.cellPadding * (0 + 1),
      top:  2 * width + _state.cellPadding * (2 + 1),
      width: width,
      height: 2 * width+_state.cellPadding,
      color: Colors.blue[300],
      text: Text(
        "黄忠",
        style: new TextStyle(fontSize: 40),
      ),
    );
    verticalBox_4 = CellWidget(
      perWidth: width,
      left:3 * width + _state.cellPadding * (3 + 1),
      top: 2 * width + _state.cellPadding * (2 + 1),
      width: width,
      height: 2 * width+_state.cellPadding,
      color: Colors.blue[300],
      text: Text(
        "赵云",
        style: new TextStyle(fontSize: 40),
      ),
    );
    leadBox = CellWidget(
      perWidth: width,
      left:1 * width + _state.cellPadding * (1 + 1),
      top:  0 * width + _state.cellPadding * (0 + 1),
      width: 2 * width+_state.cellPadding,
      height: 2 * width+_state.cellPadding,
      color: Colors.red[400],
      text: Text(
        "曹操",
        style: new TextStyle(fontSize: 40),
      ),
    );
    blankBox_1 = CellWidget(
      perWidth: width,
      left:1 * width + _state.cellPadding * (1 + 1),
      top: 4 * width + _state.cellPadding * (4 + 1),
      width: width,
      height: width,
      color: Colors.grey,
    );
    blankBox_2 = CellWidget(
      perWidth: width,
      left:2 * width + _state.cellPadding * (2 + 1),
      top: 4 * width + _state.cellPadding * (4 + 1),
      width: width,
      height: width,
      color: Colors.grey,
    );
    box_1 = CellWidget(
      perWidth: width,
      left:1 * width + _state.cellPadding * (1 + 1),
      top: 3 * width + _state.cellPadding * (3 + 1),
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(fontSize: 40),
      ),
    );
    box_2 = CellWidget(
      perWidth: width,
    left:2 * width + _state.cellPadding * (2 + 1),
      top:  3 * width + _state.cellPadding * (3 + 1),
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(fontSize: 40),
      ),
    );
    box_3 = CellWidget(
      perWidth: width,
      left: 0 * width + _state.cellPadding * (0 + 1),
      top:  4 * width + _state.cellPadding * (4 + 1),
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(fontSize: 40),
      ),
    );
    box_4 = CellWidget(
      perWidth: width,
      left: 3 * width + _state.cellPadding * (3 + 1),
      top:  4 * width + _state.cellPadding * (4 + 1),
      width: width,
      height: width,
      color: Colors.yellow[300],
      text: Text(
        "兵",
        style: new TextStyle(fontSize: 40),
      ),
    );
//      c * width + _state.cellPadding * (c + 1)
//      r * width + _state.cellPadding * (r + 1)
  }

  BoardGridWidget(this._state);
  @override
  Widget build(BuildContext context) {
    Size boardSize = _state.boardSize();
    double width =
        (boardSize.width - (_state.column + 1) * _state.cellPadding) /
            _state.column;
    List<CellWidget> _backgroundBox = List<CellWidget>();
    initBox(width);
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
  MediaQueryData _queryData;
  final int row = 5;
  final int column = 4;
  final double cellPadding = 5.0;
  final EdgeInsets _gameMargin = EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0);
  bool _isGameOver = false;

  void newGame() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _queryData = MediaQuery.of(context);
    List<Widget> children = List<Widget>();
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
  final double perWidth;
  final double cellPadding = 5.0;
  final double width;
  final double height;
  final Color color;
  final Text text;
  double top ;
  double left ;
  CellWidget(
      { this.perWidth,this.width, this.height, this.color, this.text,this.left,this.top});

  getColorByXY(double top,double left){
    if(this.top == top && this.left == left)
      return color;
  }

  @override
  _CellWidgetState createState() => new _CellWidgetState();
}

class _CellWidgetState extends State<CellWidget> {

  setLimit(int i){
     return   i * widget.perWidth + widget.cellPadding * (i + 1);
  }
  bool equal(double a,double b){
    if ((a- b> -0.000001) && (a- b) < 0.000001)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: widget.left,
          top: widget.top,
          child: GestureDetector(
              child: CellBox(
                width: widget.width,
                height: widget.height,
                color:widget.color,
                text: widget.text,
              ),

              //垂直方向拖动事件
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  double perMove=widget.top + details.delta.dy;
//                  print(widget.height);
//                  print(widget.perWidth);
//                  print(2*widget.perWidth+widget.cellPadding);
//                  print(equal(widget.height ,2*widget.perWidth+widget.cellPadding));

                  if(equal(widget.height ,2*widget.perWidth+widget.cellPadding)) {
                    if(setLimit(0)<=perMove&&perMove<=setLimit(3)) {
                      widget.top += details.delta.dy;
                    }
                  }
                else
                  if (setLimit(0) <= perMove && perMove <= setLimit(4)) {
                      widget.top += details.delta.dy;
                    }

                });

              },
              //水平方向拖动事件
              onHorizontalDragUpdate:(DragUpdateDetails details) {
               setState(() {
                 double perMove=widget.left+details.delta.dx;
                 if(equal(widget.width ,2*widget.perWidth+widget.cellPadding)) {
                   if(setLimit(0)<=perMove&&perMove<=setLimit(2)) {
                     widget.left += details.delta.dx;
                   }
                 }
                 else
                 if (setLimit(0) <= perMove && perMove <= setLimit(3)) {
                   widget.left += details.delta.dx;
                 }
             });
             },
          ),
        )
      ],
    );
  }
}
class CellBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Text text;
  CellBox(
      { this.width, this.height, this.color, this.text});

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
        )
    );
  }
}
