import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '布局demo',
          style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: const Color(0xffffffff)),
        ),
      ),
      body: new Row(
        children: <Widget>[
          new Flexible(
            child: new RaisedButton(
              onPressed: _onPress,
              color: const Color(0xff000044),
              child: new Text(
                "按钮一",
                style: new TextStyle(
                    color: const Color(0xffffffff), fontSize: 18.0),
              ),
            ),
            flex: 1,
          ),
          new Flexible(
            child: new RaisedButton(
              onPressed: _onPress,
              color: const Color(0xffff0000),
              child: new Text(
                "按钮二",
                style: new TextStyle(
                    color: const Color(0xffffffff), fontSize: 18.0),
              ),
            ),
            flex: 1,
          ),
          new Flexible(
            child: new RaisedButton(
              onPressed: _onPress,
              color: const Color(0xff00ff00),
              child: new Text(
                "按钮三",
                style: new TextStyle(
                    color: const Color(0xffffffff), fontSize: 18.0),
              ),
            ),
            flex: 1,
          )
        ],
      ),
      floatingActionButton:
          new FloatingActionButton(child: new Icon(Icons.add), onPressed: null),
    );
  }
}

void _onPress() {
  print("按钮点击事件");
}

class LayoutStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '层叠布局测试',
          style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: const Color(0xffffffff)),
        ),
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new Image.network(
                'http://img2.cxtuku.com/00/13/12/s97783873391.jpg'),
            new Positioned(
              left: 35.0,
              right: 35.0,
              top: 45.0,
              child: new Text(
                'Whatever is worth doing is worth doing well. ๑•ิ.•ั๑',
                style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'serif',
                ),
              ),
            ),
            new Text(
              '''
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory;
But thou, contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thyself thy foe, to thy sweet self too cruel.
Thout that are now the world's fresh ornament
And only herald to the gaudy spring,
Within thine own bud buriest thy content
And, tender churl, mak'st waste in niggarding.
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
WHEN forty winters shall besiege thy brow
And dig deep trenches in thy beauty's field,
Thy youth's proud livery, so gazed on now,
Will be a tottered weed of small worth held:
Then being asked where all thy beauty lies,
Where all the treasure of thy lusty days,
To say within thine own deep-sunken eyes
Were an all-eating shame and thriftless praise.
How much more prasie deserved thy beauty's use
If thou couldst answer, 'This fair child of mine
Shall sum my count and make my old excuse,'
Proving his beauty by succession thine.
This were to be new made when thou art old
And see thy blood warm when thou feel'st cold.
LOOK in thy glass, and tell the face thou viewest
Now is the time that face should form another,
Whose fresh repair if now thou renewest,
Thou dost beguile the world, unbless some mother.
For where is she so fair whose uneared womb
Disdains the tillage of thy husbandry?
Or who is he so fond will be the tomb
Of his self-love, to stop posterity?
Thou art thy mother's glass, and she in thee
Calls back the lovely April of her prime;
So thou through windows of thine age shalt see,
Despite of wrinkles, this thy golden time.
But if thou live rememb'red not to be,
Die single, and thine image dies with thee.
             ''',
              style: new TextStyle(
                fontFamily: 'serif',
                fontSize: 14.0,
              ),
            ),
            new Align(
              alignment: new FractionalOffset(0.0, 0.0),
              child:
                  new Image.network('http://up.qqjia.com/z/25/tu32710_10.jpg'),
            ),
            new Align(
              alignment: FractionalOffset.bottomRight,
              child:
                  new Image.network('http://up.qqjia.com/z/25/tu32710_11.jpg'),
            ),
            new Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 90.0, vertical: 100.0),
              child:
                  new Image.network('http://up.qqjia.com/z/25/tu32710_4.jpg'),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add), onPressed: _onPress),
    );
  }
}

class LayoutSizeBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('强制大小布局'),
      ),
      body: new SizedBox(
        width: 300.0,
        height: 500.0,
        child: new Container(
          color: Colors.lightBlueAccent[100],
          child: new AspectRatio(
            aspectRatio: 1 / 2,
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                  color: Colors.lightGreen,
                  gradient: new LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: <Color>[
                        const Color(0xffff2cc),
                        const Color(0xffff6eb4)
                      ])),
              child: new Container(
                padding: new EdgeInsets.all(30.0),
                margin: new EdgeInsets.all(40.0),
                color: Colors.red,
                child: new Center(
                  child: new Opacity(
                    opacity: 0.9,
                    child: new Text("center"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: '布局demo',
    home: new LayoutSizeBoxDemo(),
  ));
}
