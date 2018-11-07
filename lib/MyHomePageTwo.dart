import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePageTwo extends StatelessWidget {
  final title;

  const MyHomePageTwo({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(title)),
      body: Text('第二页面'),
    );
  }
}
