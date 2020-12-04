import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // BuildContext 可不写 context 必写
  Widget build(BuildContext context) {
    return MaterialApp(
      // 页面缩略的时候 显示的标题
      title: '布局',
      home: Scaffold(
          // 页面标题 头部
          appBar: AppBar(
            title: Text('垂直方向布局'),
          ),
          body: Center(
            child: Column(
              // 设置里面的主轴的排序方式
              // crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // 设置
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text('螃蟹在剥我的壳'),
                ),
                Expanded(
                  child: Text('笔记本在写我'),
                ),
                Expanded(
                  child: Text('漫天的我落在枫叶上雪花上'),
                ),
                Expanded(
                  child: Text('而你在想我'),
                ),
              ],
            ),
          )),
    );
  }
}
