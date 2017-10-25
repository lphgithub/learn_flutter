import 'package:demo/achievement_view_list_item.dart';
import 'package:flutter/material.dart';

class AchievementViewList extends StatefulWidget {
  @override
  State createState() => new _AchievementViewList();

  AchievementViewList({
    this.targets,
    Key key,
  })
      : super();
  final List<Target> targets;
}

class _AchievementViewList extends State<AchievementViewList> {
  Set<Target> _archevements = new Set<Target>();

  void _archevementChanged(Target target, bool isNowTarget) {
    print("target is $target and isNowTarget is $isNowTarget");
    setState(() {
      if (isNowTarget) {
        _archevements.add(target);
      } else {
        _archevements.remove(target);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: widget.targets.map((Target target) {
        // 返回值，创建成就目标类
        return new AchievementViewItem(
          // 传递目标：本轮迭代中的目标
          target: target,
          // 是否新目标：如果目标在成就集合中，则返回true
          isNowTarget: _archevements.contains(target),
          // 对目标的改变：类函数，成就改变
          targetChangedCallback: _archevementChanged,
        );
      }).toList(),
    );
  }
}
