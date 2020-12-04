import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  int a = 20;
  int b = 10;

  // 算术运算符
  print(a + b); // 加
  print(a - b); // 减
  print(a * b); // 乘
  print(a / b); // 除
  print(a % b); // 取余
  print(a ~/ b); // 取整

  // 关系运算符
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // 赋值运算符
  b ??= 23; // 表示如果 b 为空的话 把 23 赋值给 b, 如果有值 则不赋值

  // 类型转换

  // String 类型转换为 Number 类型
  String str = '123';
  var num = int.parse(str);
  print(num is int); // 判断是否为 int 类型 返回 布尔值

  // 浮点类型
  String str1 = '123.21';
  var num1 = double.parse(str1);
  print(num1 is double); // 判断是否为 int 类型 返回 布尔值

  runApp(MyApp());
}

// 基础的知识
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
          title: Text('首页'),
        ),
        // Center 居中显示
        // Container 容器
        body: Container(
            // child: Text(
            //   '嗯哼啊第欧萨hi哦的hi哦啊好哦I返回键爱代发hi哦啊好啊是发货地是覅书社会辐射士大夫撒旦',
            //   // 文字的对齐方式
            //   textAlign: TextAlign.center,
            //   // 显示几行
            //   maxLines: 1,
            //   // 超出部分 用省略号代替
            //   overflow: TextOverflow.ellipsis,
            //   // 字体样式
            //   style: TextStyle(
            //     // 字体大小 是浮点类型
            //     fontSize: 26.0,
            //     // color: Color(0xffFFC459)
            //     color: Color.fromARGB(255, 255, 125, 125),
            //     // 修饰属性
            //     decoration: TextDecoration.underline,
            //     // 下划线的类型(实线、虚线等等)
            //     // decorationStyle: TextDecorationStyle.solid,
            //     decorationStyle: TextDecorationStyle.dashed,
            //   ),
            // ),
            child: Wrap(
          children: [
            Container(
              // child: Text(
              //   '人生如此艰难',
              //   style: TextStyle(
              //     fontSize: 40.0,
              //     color: Color(0xffFFC459),
              //   ),
              // ),
              // // Container 下面子内容的对齐方式
              // // alignment: Alignment.center,
              // width: 400.0,
              // height: 400.0,
              // // color: Colors.lightBlue,
              // // 内边距
              padding: const EdgeInsets.fromLTRB(40.0, 30.0, 20.0, 10.0),
              // // 外边距
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
              // decoration: new BoxDecoration(
              //   gradient: const LinearGradient(colors: [
              //     Colors.lightBlue,
              //     Colors.greenAccent,
              //     Colors.purple
              //   ]),
              //   border: Border.all(width: 2.0, color: Color(0xffFFC459)),
              // ),
              child: new Image.network(
                // 'https://im-1302325494.cos.ap-nanjing.myqcloud.com/wallet/webDeveloper/No_0_host_ico.png',
                'https://blogimages.jspang.com/blogtouxiang1.jpg',
                // 是否背景图像 和 css 的 background-repeat 一样 repeat 全部 repeatX 横向重复 repeatX 纵向重复
                repeat: ImageRepeat.repeat,
                // repeat: ImageRepeat.repeatX,
                // repeat: ImageRepeat.repeatY,
                // 图片形式 使图片高度或者是宽度到达容器的大小后 就停止
                // fit: BoxFit.contain,
                // 充满整个容器
                // fit: BoxFit.fill,
                // 图片横向充满(fitWidth) 图片竖向充满(fitHeight) 超过部分裁剪
                // fit: BoxFit.fitWidth,
                // 不改变原图片大小
                fit: BoxFit.scaleDown,
                // 改变图片的颜色
                // color: Colors.lightBlue,
                // 混合属性
                // colorBlendMode: BlendMode.darken,
              ),
              width: 500.0,
              height: 400.0,
              color: Colors.deepPurple,
            ),
            // 定义事件
            InkWell(
              child: Container(
                width: 500.0,
                height: 400.0,
                color: Colors.greenAccent,
              ),
              onTap: () => click('123', context),
            )
          ],
        )),
      ),
    );
  }

  click(s, context) {
    print(s);
  }
}
