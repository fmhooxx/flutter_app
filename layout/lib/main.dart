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
      title: 'Flutter Demo',
      home: Scaffold(
        // 页面标题 头部
        appBar: AppBar(
          title: Text('卡片布局'),
        ),
        // Center 居中显示
        // Container 容
        body: Container(
          child: Card(),
        ),
      ),
    );
  }
}

String url =
    'https://pic2.zhimg.com/v2-01dada567c80e7c4196458cd4ebf8b00_im.jpg';

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
          title: Text('嗯哼'),
          subtitle: Text('没关系, 天空越黑, 星星越亮'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => handle('123'),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
          title: Text('嗯哼'),
          subtitle: Text('没关系, 天空越黑, 星星越亮'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => handle('123'),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
          title: Text('嗯哼'),
          subtitle: Text('没关系, 天空越黑, 星星越亮'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => handle('123'),
        ),
        Divider(),
      ],
    );
  }

  handle(s) {
    print(s);
  }
}
