import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: null,
            tooltip: '导航菜单',
          ),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search), onPressed: null, tooltip: '搜索'),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text('实例标题',
                style: Theme.of(context).primaryTextTheme.title),
          ),
          new Expanded(
            child: new Center(
              child: new Text('你好，世界'),
            ),
          ),
        ],
      ),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
        title: new Text('这是标题'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('你好世界'),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: this.OnClick(), child: new Icon(Icons.add)),
    );
  }

  OnClick() {
    print('button 被点击了');
  }
}

class GestureButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('button 被点击了');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
        ),
        child: new Center(
          child: new Text(
            '点击按钮',
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: '我的应用',
    home: new TutorialHome(),
  ));
}
