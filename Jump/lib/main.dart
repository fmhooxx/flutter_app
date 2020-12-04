import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '页面跳转并返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转并返回数据'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('点击跳转'),
      onPressed: () {
        _navgate(context);
      },
    );
  }

  _navgate(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChildPage(),
      ),
    );
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('$result'),
      ),
    );
  }
}

class ChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('子页面'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('嗯哼'),
              onPressed: () {
                Navigator.pop(context, '返回的数据');
              },
            ),
            RaisedButton(
              child: Text('天空越黑'),
              onPressed: () {
                Navigator.pop(context, '星星越亮');
              },
            ),
          ],
        ),
      ),
    );
  }
}
