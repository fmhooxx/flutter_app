import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // BuildContext 可不写 context 必写

  //  Positioned控件主要用来设置绝对布局，必须配合Stack控件来使用

  Widget build(BuildContext context) {
    var stack = Stack(
      // 对齐属性(只能是针对两个容器) FractionalOffset(x,y) x 轴和 y 轴的变化是从零到一
      alignment: const FractionalOffset(0.5, 0.9),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/login.png'),
          // backgroundImage: NetworkImage('/images/login.png'),
          radius: 100.0,
        ),
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Container(
            child: Text('上外青山楼外楼'),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            padding: EdgeInsets.all(10.0),
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Container(
            child: Text('江山不及你温柔'),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            padding: EdgeInsets.all(10.0),
          ),
        )
      ],
    );
    return MaterialApp(
      // 页面缩略的时候 显示的标题
      title: 'Flutter Demo',
      home: Scaffold(
        // 页面标题 头部
        appBar: AppBar(
          title: Text('层叠布局之Positioned'),
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
