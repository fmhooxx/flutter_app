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
          title: Text('登录'),
        ),
        // Center 居中显示
        // Container 容器
        body: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
          child: Wrap(
            children: [
              Center(
                child: Container(
                  child: Image.asset('images/login.png'),
                  width: 70.0,
                  height: 70.0,
                  margin: const EdgeInsets.all(40.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(250, 250, 250, 250),
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: const Color.fromARGB(250, 234, 235, 254),
                        offset: new Offset(0.0, 2.0),
                        blurRadius: 4.0,
                      ),
                      new BoxShadow(
                        color: const Color.fromARGB(250, 234, 235, 254),
                        offset: new Offset(0.0, 10.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Wrap(children: [
                  Container(
                    child: TextField(
                      // 用于设置该输入框默认的键盘输入类型
                      keyboardType: TextInputType.phone,
                      // 输入框的最大行数，默认为1；如果为null，则无行数限制。
                      maxLines: 1,
                      // 是否自动获取焦点。
                      autofocus: false,
                      // cursorWidth、cursorRadius和cursorColor：这三个属性是用于自定义输入框光标宽度、圆角和颜色的。
                      cursorColor: Colors.blue,
                      // 代表输入框文本的最大长度，设置后输入框右下角会显示输入的文本计数
                      maxLength: 11,
                      // 决定当输入文本长度超过maxLength时是否阻止输入，为true时会阻止输入，为false时不会阻止输入但输入框会变红
                      maxLengthEnforced: true,
                      // focusNode: phoneFocusNode,
                      // 定义输入框样式
                      decoration: InputDecoration(
                        hintText: "请输入手机号码",
                        labelText: "手机号",
                        prefixIcon: Icon(Icons.phone),
                        // 未获得焦点下划线设为灰色
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        //获得焦点下划线设为蓝色
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      maxLines: 1,
                      autofocus: false,
                      cursorColor: Colors.blue,
                      // focusNode: passwordFocusNode,
                      decoration: InputDecoration(
                        hintText: "请输入密码",
                        labelText: "密码",
                        prefixIcon: Icon(Icons.vpn_key),
                        // 未获得焦点下划线设为灰色
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        //获得焦点下划线设为蓝色
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              // 左右显示
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
                child: Row(
                  // child: Wrap(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '忘记密码?',
                      ), // 中间用Expanded控件
                    ),
                    Expanded(
                      child: Text(
                        '立即注册',
                        textAlign: TextAlign.right,
                      ), // 中间用Expanded控件
                    ),
                  ],
                ),
              ),
              // 让按钮充满整个屏幕
              Container(
                margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: new RaisedButton(
                    // 设置按钮的背景颜色
                    color: Color.fromARGB(250, 193, 195, 205),
                    // 按钮的圆角以及边框的颜色
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                        side: BorderSide(
                          color: Color.fromARGB(250, 193, 195, 205),
                        )),
                    child: new Text(
                      '点我',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
