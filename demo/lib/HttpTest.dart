import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as http;

class HttpTest extends StatefulWidget {
  HttpTest({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HttpTest> {
  String _ipAddress = "未知";
  String _json = "";
  String _localJson = "";

  _getIPAddress() async {
    String url = 'https://httpbin.org/ip';
    var httpClient = http.createHttpClient();
    var response = await httpClient.read(url);
    Map data = JSON.decode(response);
    String ip = data['origin'];

    /*
    bool mounted
    这个状态对象当前是否在树中。
    用于此处，如果控件在数据正在请求时从树中删除，则我们要丢弃该数据，而不是调用setState来更新实际不存在的内容。
     */
    if (!mounted) return;

    setState(() {
      _ipAddress = ip;
    });
  }

  _networkLoading() async {
    var httpClient = http.createHttpClient();
    httpClient
        .get("https://domokit.github.io/examples/stocks/data/stock_data_2.json")
        .then((response) {
      // 响应的主体作为字符串返回
      String netdata = response.body;
      // JsonDecoder类解析JSON字符串并构建相应的对象
      JsonDecoder decoder = new JsonDecoder();
      // 将给定的JSON字符串输入转换为其对应的对象
      List<List<String>> json = decoder.convert(netdata);
      // 输出给定的JSON数据
      print(json[0][1]);

      if (!mounted) return;

      setState(() {
        _json = json[0][1];
      });
    });
  }

  _loadAssets() async {
    var request = http.rootBundle;
    Future<String> future = request.loadString('json/config.json');
    future.then((value) {
      JsonDecoder decoder = new JsonDecoder();
      List<List<String>> json = decoder.convert(value);
      print(json[0][1]);
      _localJson = json[0][2];
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0);

    return new Scaffold(
        body: new Center(
            child: new Column(children: <Widget>[
      spacer,
      new Text('您当前的IP地址是：'),
      new Text('$_ipAddress'),
      spacer,
      spacer,
      new Text('获取网络json数据：'),
      new Text('$_json'),
      spacer,
      spacer,
      new Text('获取本地json数据：'),
      new Text('$_localJson'),
      spacer,
      spacer,
      new RaisedButton(
        onPressed: _getIPAddress,
        child: new Text('获取IP地址'),
      ),
      spacer,
      spacer,
      new RaisedButton(
        onPressed: _networkLoading,
        child: new Text('获取json数据'),
      ),
      spacer,
      spacer,
      new RaisedButton(
        onPressed: _loadAssets,
        child: new Text('获取本地json数据'),
      )
    ])));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new HttpTest(),
    );
  }
}

void main() {
  runApp(new MyApp());
}
