import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  int sentArgument;
  Test({this.sentArgument});
  @override
  _TestState createState() => _TestState(sentArgument);
}

class _TestState extends State<Test> {
  int sentArgument;
  _TestState(this.sentArgument);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('$sentArgument'),
    ));
  }
}
