import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'flutter 获取网络图片示例',
          style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
              color: const Color(0xff333333)),
        ),
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          new Image.network(
            'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
            scale: 2.0,
          ),
          new Image.asset("images/bg.png"),
        ],
      )),
      floatingActionButton:
          new FloatingActionButton(child: new Icon(Icons.add), onPressed: null),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'flutter 教程',
    home: new ImageDemo(),
  ));
}
