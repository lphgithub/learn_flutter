import 'dart:math';

// dart语法中没有public、protected和private这些关键字，只要在标识符前面加“_”，就能声明私有变量或者函数
void demo() {
  int figureA = -93;
// figureA是否为负数
  print(figureA.isNegative);
// figureA是否是有限的
  print(figureA.isFinite);
// figureA是否正无穷大或负无穷大
  print(figureA.isInfinite);

  double figureB = 64.742;
  // 返回figureB的符号，-1.0:值小于0、+1.0:值大于0、-0.0/0.0/NaN:值是其本身
  print(figureB.sign);
  // 返回figureB运行时的类型
  print(figureB.runtimeType);
  // 返回figureB的哈希码
  print(figureB.hashCode);

  int figureC = 13;
  // figureC是否为奇数
  print(figureC.isOdd);
  // figureC是否为偶数
  print(figureC.isEven);
  // 返回figureC所占存储位
  print(figureC.bitLength);

  String str = "Hello world!";
  // 返回字符串的UTF-16代码单元列表
  print(str.codeUnits);
  // 返回根据代码单元生成的哈希码
  print(str.hashCode);
  // 字符串是否为空
  print(str.isEmpty);
  // 字符串是否不为空
  print(str.isNotEmpty);
  // 字符串的长度
  print(str.length);
  // 返回字符串Unicode代码的可迭代对象
  print(str.runes);
  // 返回对象运行时的类型
  print(str.runtimeType);

  RegExp exp = new RegExp(r"(\w+)");
  // 返回正则表达式的哈希码
  print(exp.hashCode);
  // 正则表达式是否区分大小写
  print(exp.isCaseSensitive);
  // 正则表达式是否匹配多行
  print(exp.isMultiLine);
  // 返回源正则表达式字符串
  print(exp.pattern);
  // 返回对象运行时的类型
  print(exp.runtimeType);

  List<int> fixedLengthList = new List(5);
  fixedLengthList[0] = 87;
  print(fixedLengthList);
  print(fixedLengthList[0]);

  List<int> growableList = [1, 2];
  print(growableList);
  growableList.length = 0;
  print(growableList);

  growableList.add(499);
  print(growableList);

  growableList[0] = 87;
  print(growableList);
}

void main() {
  demo();
  print(PI);
  printNameA("XiaoMing");
  printNameB("XiaoMing");
  printNameC("XiaoMing");
  var names = new List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  // 检查模式编译失败，生产模式编译成功
  names.add('42');

  print(names is List<String>);

  Logger logger = new Logger("TAG");
  logger.log("this is message");

  names.forEach((name) {
    print(name);
  });
}

// 规范语法
void printNameA(String name) {
  print("My name is $name.");
}

// 通俗语法
printNameB(name) {
  print("My name is $name.");
}

// 速写语法
void printNameC(String name) => print("My name is $name.");

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}
