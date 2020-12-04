import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // BuildContext 可不写 context 必写
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: [
          ListTile(
            // 头部
            title: Text(
              '认真且怂',
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.amberAccent),
            ),
            // 底部
            subtitle: Text(
              '从一而终',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.cyanAccent,
              ),
            ),
            // 图标
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider(),
          ListTile(
            // 头部
            title: Text(
              '认真且怂',
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.amberAccent),
            ),
            // 底部
            subtitle: Text(
              '从一而终',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.cyanAccent,
              ),
            ),
            // 图标
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider()
        ],
      ),
    );
    return MaterialApp(
      // 页面缩略的时候 显示的标题
      title: 'Flutter Demo',
      home: Scaffold(
        // 页面标题 头部
        appBar: AppBar(
          title: Text('卡片布局'),
        ),
        // Center 居中显示
        // Container 容
        body: Container(
          child: card,
        ),
      ),
    );
  }
}
