import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // BuildContext 可不写 context 必写
  Widget build(BuildContext context) {
    var stack = Stack(
      // 对齐属性 FractionalOffset(x,y) x 轴和 y 轴的变化是从零到一
      alignment: const FractionalOffset(0.5, 0.9),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/login.png'),
          // backgroundImage: NetworkImage('/images/login.png'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('山外青山楼外楼'),
        ),
      ],
    );
    return MaterialApp(
      // 页面缩略的时候 显示的标题
      title: 'Flutter Demo',
      home: Scaffold(
        // 页面标题 头部
        appBar: AppBar(
          title: Text('层叠布局'),
        ),
        // Center 居中显示
        // Container 容
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
