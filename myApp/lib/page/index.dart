import 'package:flutter/material.dart';
import 'package:myApp/style/style.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的APP',
      theme: ThemeData(primaryColor: ColorPlate.Fd6185),
      home: Scaffold(
        appBar: AppBar(
          title: Title(),
        ),
        body: Container(
          child: Text('data'),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            child: ClipOval(
              child: Image.asset('images/1.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
