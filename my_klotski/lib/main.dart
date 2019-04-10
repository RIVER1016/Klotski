import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Klotski",
      home: Scaffold(
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0),
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
                },
              ),
            ],
          ),
        ),
        Container(
          child: Center(
              child: Container(
            height: 400.0,
            width: 290.0,
            decoration: new BoxDecoration(
              border: new Border.all(width: 4.0, color: Colors.black),
              color: Colors.greenAccent,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          border: new Border.all(width: 4.0, color: Colors.red),
                          color: Colors.grey,
                          borderRadius: new BorderRadius.all(
                              new Radius.circular(20.0)), //圆角
                        ),
                        child: Text("兵",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.purple,
                              fontSize: 40.0,
                            ))),
                  ],
                ),
              ],
            ),
          )),
        ),
      ],
    );
  }
}=
class CellBox extends StatelessWidget {
  final double left;
  final double top;
  final double size;
  final Color color;
  final Text text;
  CellBox({this.left, this.top, this.size, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
          width: size,
          height: size,
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