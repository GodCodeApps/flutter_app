import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/MyHomePageTwo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<int> items = List.generate(10, (i) => i); // 产生数据
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: new Column(children: <Widget>[
            new Text(
              "测试出$index",
              style: new TextStyle(color: Colors.blue),
            ),
            new Material(
              child: new RaisedButton(
                  color: Colors.orange,
                  elevation: 5.0,
                  splashColor: Colors.grey,
                  onPressed: () {Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyHomePageTwo(
                    title: '第二个页面',
                  )));},
                  padding: const EdgeInsets.fromLTRB(100.0,5.0,100.0,5.0),
                  child: Text(
                    "点击",
                    style: TextStyle(color: Colors.black),
                  )),
              borderRadius: BorderRadius.circular(8.0),
            ),
          new Material(
                child: new Image(
                  image: new NetworkImage(//从网络加载图片并缓存在内存中
                      "http://www.chinawriter.com.cn/NMediaFile/2018/0108/MAIN201801081621000285209947201.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          ]));
        },
      ),
//      body: new Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: new Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug paint" (press "p" in the console where you ran
//          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
//          // window in IntelliJ) to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Text(
//              'You have pushed the button this many times:',
//            ),
//            new RaisedButton(
//                child: new Text(
//                  '点击',
//                  style: new TextStyle(color: Colors.black),
//                ),
//                highlightColor: Colors.red,
//                onPressed: () {
//                }),
//            new Image.network(
//                '',
//                fit: BoxFit.fill,
//                scale: 1.0,
//                gaplessPlayback: false,
//                alignment: Alignment.center),
//            new Text('测试测试测试',
//                style: new TextStyle(
//                    color: Colors.red,
//                    fontSize: 18.0,
//                    decoration: TextDecoration.underline)),
//            new Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: new FloatingActionButton(
//          onPressed: _incrementCounter,
//          tooltip: 'Increment',
//          child: new Icon(Icons
//              .add)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _showSnackBar() {
    final snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          print("22222");
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
