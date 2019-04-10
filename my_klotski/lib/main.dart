import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.greenAccent,
            height: 400.0,
            width: 300.0,
          child: Row(
            children: <Widget>[
              Container(
                  height: 60,
                  width: 60,
                  child: Text("兵",
                      style: new TextStyle(
                        color: Colors.purple,
                        fontSize: 40.0,
                      ))),
              Container(
                  height: 60,
                  width: 60,
                  child: Text("兵",
                      style: new TextStyle(
                        color: Colors.purple,
                        fontSize: 40.0,
                      ))),
              Container(
                  height: 60,
                  width: 60,
                  child: Text("兵",
                      style: new TextStyle(
                        color: Colors.purple,
                        fontSize: 40.0,
                      ))),
              Container(
                  height: 60,
                  width: 60,
                  child: Text("兵",
                      style: new TextStyle(
                        color: Colors.purple,
                        fontSize: 40.0,
                      ))),
            ],
          ),
        )
    );
  }
}
