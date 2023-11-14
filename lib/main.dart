import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Autoput1',
      home: MyHomePage(
        title: 'アウトプット１',
        message: 'サンプル・メッセージ',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final String message;

  const MyHomePage({
    Key? key,
    required this.title,
    required this.message
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(left:10.0, right:10.0, top:20.0, bottom:20.0), //上下左右すべて同じ間隔を空ける
        margin: EdgeInsets.only(left:30.0, right:30.0, top:20.0, bottom:20.0), //指定位置の間隔を空ける
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:0.0, right:5.0, top:0.0, bottom:20.0),
                    color: Colors.redAccent,
                    width: 150,
                    height: 150,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left:5.0, right:0.0, top:0.0, bottom:20.0),
                      color: Colors.lightBlue,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Container(
                color: Colors.limeAccent,
                width: double.infinity,
                height: 75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
