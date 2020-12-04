import 'package:flutter/material.dart';

import 'demo.dart';

void main() {
  runApp(MaterialApp(
    title: '导航演示01',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  // BuildContext 可不写 context 必写
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Container(
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              child: RaisedButton(
                child: Text('点击跳转'),
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => SecondScreen(),
                //     ),
                //   );
                // },
                onPressed: () => handle(context),
              ),
            ),
            Container(
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }

  handle(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(),
      ),
    );
  }
}
