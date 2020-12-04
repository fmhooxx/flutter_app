import 'package:flutter/material.dart';

// 网格状列表
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
          title: Text('网格状列表'),
        ),
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20.0),
        //   // 每个网格的间距
        //   crossAxisSpacing: 10.0,
        //   // 每一行显示多少列
        //   crossAxisCount: 3,
        //   children: [
        //     const Text('one'),
        //     const Text('two'),
        //     const Text('three'),
        //     const Text('four'),
        //     const Text('five'),
        //     const Text('嗯哼'),
        //   ],
        // ),
        // 另一种写法
        body: GridView(
          // padding: const EdgeInsets.all(20.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 每一行显示多少列
            crossAxisCount: 3,
            // 纵轴之间每个格子之间的间距
            mainAxisSpacing: 2.0,
            // 横轴之间每个格子之间的间距
            crossAxisSpacing: 2.0,
            // 缩放比列(宽度和长度的比列)
            childAspectRatio: 0.7,
          ),
          children: [
            Image.network(
                'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
                fit: BoxFit.cover),
            Image.network(
                'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
                fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
