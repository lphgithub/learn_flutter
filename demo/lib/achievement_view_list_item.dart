import 'package:flutter/material.dart';

class Target {
  const Target({this.name, this.reward});

  final String name;
  final String reward;
}

typedef void TargetChangedCallback(Target target, bool isNowTarget);

class AchievementViewItem extends StatelessWidget {
  AchievementViewItem(
      {Target target, this.isNowTarget, this.targetChangedCallback})
      : target = target,
        super(key: new ObjectKey(target));

  final Target target;
  final bool isNowTarget;
  final TargetChangedCallback targetChangedCallback;

  Color _getColor(BuildContext content) {
    return isNowTarget ? Colors.black54 : Theme.of(content).primaryColor;
  }

  TextStyle _getNameTextStyle(BuildContext context) {
    return isNowTarget
        ? new TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            decoration: TextDecoration.lineThrough)
        : new TextStyle(
            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold);
  }

  TextStyle _getRewardTextStyle(BuildContext context) {
    return isNowTarget
        ? new TextStyle(
            color: Colors.black54,
            fontSize: 13.0,
            decoration: TextDecoration.lineThrough)
        : new TextStyle(color: Colors.black, fontSize: 13.0);
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () => targetChangedCallback(target, !isNowTarget),
      title: new Stack(
        children: <Widget>[
          new Positioned(
            child: new Text(
              target.name,
              style: _getNameTextStyle(context),
            ),
            left: 0.0,
            top: 0.0,
          ),
          new Positioned(
            child: new Text(
              target.reward,
              style: _getRewardTextStyle(context),
            ),
            left: 0.0,
            top: 20.0,
          )
        ],
      ),
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Icon(Icons.person),
      ),
    );
  }
}
