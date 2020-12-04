import 'package:flutter/material.dart';

// 网格状列表
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // BuildContext 可不写 context 必写
  Widget build(BuildContext context) {
    return MaterialApp(
      // 页面缩略的时候 显示的标题
      title: 'Flutter Demo',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        // 页面标题 头部
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Container(
          // child: Text('hello world'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: ImgBox(
                  img: 'images/1.jpg',
                  w: 420.0,
                  h: 300.0,
                  f: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.amber,
                child: Title(),
              ),
              Expanded(
                child: Container(
                  child: GridBox(
                    lists: [
                      'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
                      'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
                      'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg'
                    ],
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    childAspectRatio: 0.7,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// 图片控件
class ImgBox extends StatelessWidget {
  final img;
  final w;
  final h;
  final f;

  const ImgBox({Key key, @required this.img, this.w, this.h, this.f})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        img,
        width: w,
        height: h,
        fit: f,
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200.0,
      child: Row(
        children: <Widget>[
          Container(
            child: Flexible(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Text('data'),
                    ),
                    Container(
                      child: Text('data'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Flexible(
              flex: 1,
              child: Container(
                child: ImgBox(
                  img: 'images/1.jpg',
                  w: 30.0,
                  h: 20.0,
                  f: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridBox extends StatelessWidget {
  final lists;
  final crossAxisCount;
  final mainAxisSpacing;
  final crossAxisSpacing;
  final childAspectRatio;

  const GridBox({
    Key key,
    @required this.lists,
    this.crossAxisCount,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        // padding: const EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 每一行显示多少列
          crossAxisCount: crossAxisCount,
          // 纵轴之间每个格子之间的间距
          mainAxisSpacing: mainAxisSpacing,
          // 横轴之间每个格子之间的间距
          crossAxisSpacing: crossAxisSpacing,
          // 缩放比列(宽度和长度的比列)
          childAspectRatio: childAspectRatio,
        ),
        children: lists.map<Widget>(
          (item) {
            return Image.network(
              item,
              fit: BoxFit.cover,
            );
          },
        ).toList(),
      ),
    );
  }
}
