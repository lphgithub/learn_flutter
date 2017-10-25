import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("文本控件"),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            '红色+黑色删除线+25号',
            style: new TextStyle(
                color: const Color(0xffff0000),
                decoration: TextDecoration.lineThrough,
                decorationColor: const Color(0xff000000),
                fontSize: 25.0),
          ),
          new Text(
            '橙色+下划线+24号',
            style: new TextStyle(
                color: const Color(0xffff9900),
                decoration: TextDecoration.underline,
                fontSize: 24.0),
          ),
          new Text('加粗+20+上划线',
              style: new TextStyle(
                  color: const Color(0xff0000ff),
                  fontSize: 20.0,
                  decoration: TextDecoration.overline,
                  fontWeight: FontWeight.bold)),
          new Center(
            child: new Text(
              '备注：客户要求使用app_id来打包客户端，需要先出手机开户测试环境的客户端进行测试，测试通过再出生产环境的客户端。',
              style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w200,
                  color: const Color(0xff00ff00),
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: '我的应用',
    home: new ContainerDemo(),
  ));
}
