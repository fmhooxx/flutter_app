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
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: [
            // Expanded 灵活布局 有点像 flex
            Expanded(
              child: RaisedButton(
                // 按钮点击时的事件
                onPressed: () {},
                color: Colors.redAccent,
                child: Text('红色按钮'),
              ),
            ),
            Expanded(
              child: RaisedButton(
                // 按钮点击时的事件
                onPressed: () {},
                color: Colors.lightGreen,
                child: Text('淡绿色按钮'),
              ),
            ),
            Expanded(
              child: RaisedButton(
                // 按钮点击时的事件
                onPressed: () {},
                color: Colors.orangeAccent,
                child: Text('橙色按钮'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
