import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:myApp/page/index.dart';
import 'package:myApp/style/style.dart';
import 'package:myApp/view/CommonTextField.dart';
import 'package:myApp/view/GradientsButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的APP',
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  bool passwordVisible = true; //设置初始状态

  // Login createState() => Login();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent, //把scaffold的背景色改成透明
        appBar: AppBar(
          backgroundColor: Colors.transparent, //把appbar的背景色改成透明
          elevation: 0, //appbar的阴影
          // title: Text('欢迎加入'),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          // child: Text('data'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  '欢迎加入!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
                child: Container(
                  width: 120.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(50, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '登录',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 6,
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Login(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Login extends StatelessWidget {
  bool passwordVisible = true; //设置初始状态
  final phone = TextEditingController();
  final pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
      // padding: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
      // decoration: BoxDecoration(
      //   color: Colors.greenAccent,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              '手机号',
              style: TextStyle(
                color: Color.fromARGB(255, 151, 151, 151),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
            child: CommonTextField(controller: phone, maxLength: 11),
          ),
          Container(
            child: Text(
              '密码',
              style: TextStyle(
                color: Color.fromARGB(255, 151, 151, 151),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
            child: CommonTextField(
              controller: pwd,
              hintText: '请输入密码',
            ),
            // child: TextField(
            //   keyboardType: TextInputType.text,
            //   maxLines: 1,
            //   autofocus: false,
            //   obscureText: !passwordVisible,
            //   decoration: InputDecoration(
            //     fillColor: Color(0x30cccccc),
            //     filled: true,
            //     hintText: '请输入密码',
            //     isDense: true,
            //     suffixIcon: IconButton(
            //       icon: Icon(
            //         passwordVisible ? Icons.visibility : Icons.visibility_off,
            //         // color: Theme.of(context).primaryColorDark,
            //       ),
            //       // onPressed: changePwd
            //       onPressed: () {
            //         // passwordVisible = !passwordVisible;
            //         // print(passwordVisible);

            //         // passwordVisible = !passwordVisible;
            //         // ignore: unused_element
            //         setState() {
            //           passwordVisible = !passwordVisible;
            //           print(passwordVisible);
            //         }

            //         print('123');
            //       },
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Color(0x00FF0000),
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(100),
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Color(0x00000000),
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(100),
            //       ),
            //     ),
            //   ),
            // ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '忘记密码?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: RadiusAngle.BoxDecoration28,
              gradient: ColorGradient.Gradient,
            ),
            // SizedBox是具有固定宽高的组件 下面的子组件无法超出区域
            // child: SizedBox(
            //   width: double.infinity,
            //   height: 50,
            child: GradientsButton(),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: RadiusAngle.BoxDecoration28,
              gradient: ColorGradient.Gradient,
            ),
            // SizedBox是具有固定宽高的组件 下面的子组件无法超出区域
            // child: SizedBox(
            //   width: double.infinity,
            //   height: 50,
            child: SizedBox(
              width: double.infinity,
              height: 50.0,
              child: RaisedButton(
                //用RaisedButton按钮的时候需要设置下面三个属性
                color: ColorPlate.transparent1,
                elevation: 0, // 按钮阴影 正常时阴影隐藏
                highlightElevation: 0,
                // 按钮的圆角以及边框的颜色
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: Text(
                  '测试',
                  style: TextStyle(
                    letterSpacing: 0,
                    fontSize: SysSize.size14,
                    color: ColorPlate.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  handle(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  handle(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Index(),
      ),
    );
    // RegExp exp = RegExp(
    //     r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$');
    // bool matched = exp.hasMatch(phone.text);
    // if (matched == false) {
    //   return showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text('请输入正确的手机号码'),
    //       );
    //     },
    //   );
    // }
    // Dio dio = Dio();
    // Response response;
    // response = await dio.post("https://portaltestapi.gup-go.club/sso/login",
    //     queryParameters: {"username": 17855355076, "password": 112233});
    // print(response.data.toString());
  }
}
