import 'package:flutter/material.dart';

class MenuDemo extends StatefulWidget {
  @override
  _MenuDemoState createState() => new _MenuDemoState();
}

String _showText = "这是选择的菜单值";

class _MenuDemoState extends State<MenuDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("弹出式菜单测试"),
        actions: <Widget>[
          new PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuItem>[
                  new PopupMenuItem(
                    child: new Text("选项值一"),
                    value: '选项值一',
                  ),
                  new PopupMenuItem(
                    child: new Text("选项之而"),
                    value: '选择性2',
                  ),
                  new PopupMenuItem(
                    child: new Text("选项之而fd"),
                    value: '选择性3',
                  ),
                ],
            onSelected: (value) => _onSelect(value),
          ),
        ],
      ),
      body: new Center(
        child: new Text(_showText),
      ),
    );
  }

  _onSelect(value) {
    setState(() {
      _showText = value;
    });
  }
}

void main() {
  runApp(new MaterialApp(
    title: '弹出式菜单测试',
    home: new MenuDemo(),
  ));
}
