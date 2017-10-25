import 'package:demo/achievement_view_list.dart';
import 'package:demo/achievement_view_list_item.dart';
import 'package:flutter/material.dart';

class AchievementView extends StatefulWidget {
  AchievementView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AchievementView createState() => new _AchievementView();
}

class _AchievementView extends State<AchievementView> {
  List<Target> datas = <Target>[
    new Target(name: '生存100天', reward: "金钱￥2500\t最高能量+20"),
    new Target(name: '大学毕业', reward: "获得毕业学位\t金钱￥5000\t最高情绪+30"),
    new Target(name: '获得￥5000', reward: "获得信用卡"),
    new Target(name: '购买廉价的公寓', reward: "最高能量+60\t最高饥饿度+30"),
    new Target(name: '购买普通的公寓', reward: "最高能量+80\t最高饥饿度+50"),
    new Target(name: '生存100天', reward: "金钱￥2500\t最高能量+20"),
    new Target(name: '大学毕业', reward: "获得毕业学位\t金钱￥5000\t最高情绪+30"),
    new Target(name: '获得￥5000', reward: "获得信用卡"),
    new Target(name: '购买廉价的公寓', reward: "最高能量+60\t最高饥饿度+30"),
    new Target(name: '购买普通的公寓', reward: "最高能量+80\t最高饥饿度+50"),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text(widget.title),
        ),
      ),
      body: new AchievementViewList(targets: datas),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add), onPressed: _addAchievement),
    );
  }

  void _addAchievement() {
    print("_addAchievement start add ");
    setState(() {
      datas.add(new Target(name: '增加的', reward: "获得毕业学位\t金钱￥5000\t最高情绪+30"));
    });
  }
}

void main() {
  runApp(new MaterialApp(
    title: '列表测试',
    home: new AchievementView(
      title: '测试列表信息',
    ),
  ));
}
