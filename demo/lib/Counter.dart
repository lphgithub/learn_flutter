import 'package:flutter/material.dart';

//class Counter extends StatefulWidget {
//  @override
//  _CounterState createState() => new _CounterState();
//}
//
//class _CounterState extends State<Counter> {
//  int _count = 0;
//
//  void _increment() {
//    setState(() {
//      _count += 1;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Flutter实例'),
//      ),
//      body: new Center(
//        child: new Text('按钮点击 $_count 次${ _count == 0 ? '' : '' }'),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _increment,
//        tooltip: '增加',
//        child: new Icon(Icons.add),
//      ),
//    );
//  }
//}


class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('按钮点击 $count 次'),
    );
  }
}
class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
      onPressed: onPressed,
      tooltip: '增加',
      child: new Icon(Icons.add),
    );
  }
}
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}
class _CounterState extends State<Counter> {
  int _count = 0;
  void _increment() {
    setState(
            () {
          _count += 1;
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter实例'),
      ),
      body: new CounterDisplay(count: _count),
      floatingActionButton: new CounterIncrementor(onPressed: _increment),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter实例',
      home: new Counter(),
    ),
  );
}
