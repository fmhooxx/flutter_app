import 'package:flutter/material.dart';

// 横向列表和纵向列表
void main() {
  runApp(MyApp(
      // 声明一个不固定长度的数组
      // items: List()
      // 声明一个有固定长度的数组 括号里面的数字就代表着长度
      // items: List(1000)
      // 声明一个数组的内容必须是 String 的数组
      // items: List<String>()
      items: List<String>.generate(1000, (index) => 'Item $index')));
}

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

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
          title: Text('ListView'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
        // Center 居中显示
        // Container 容器
        // body: ListView(
        //   children: <Widget>[
        //     ListTile(
        //       // 图标
        //       leading: Icon(Icons.wifi_rounded),
        //       // 文字
        //       title: Text('爱你哟'),
        //     ),
        //     ListTile(
        //       // 图标
        //       leading: Icon(Icons.work_sharp),
        //       // 文字
        //       title: Text('爱你哟'),
        //     ),
        //     ListTile(
        //       // 图标
        //       leading: Icon(Icons.zoom_out),
        //       // 文字
        //       title: Text('爱你哟'),
        //     ),
        //     Image.network(
        //       'https://newimg.jspang.com/ReactHooks01-1.jpg',
        //     ),
        //     Image.network(
        //       'https://newimg.jspang.com/TaroLogo1.jpg',
        //     ),
        //     Image.network(
        //       'https://newimg.jspang.com/react_blog_demo.jpg',
        //     ),
        //     Image.network(
        //       'https://newimg.jspang.com//next_blog.jpg',
        //     ),
        //   ],
        // ),

        // body: Center(
        //   child: Container(
        //     height: 200.0,
        //     child: MyList(),
        //   ),
        // ),
      ),
    );
  }
}

// 把 横向的 list 封装起来
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 横向的列表
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 200.0,
          color: Colors.lightBlue,
        ),
        Container(
          width: 200.0,
          color: Colors.amber,
        ),
        Container(
          width: 200.0,
          color: Colors.deepPurple,
        ),
        Container(
          width: 200.0,
          color: Colors.deepOrangeAccent,
        ),
      ],
    );
  }
}
