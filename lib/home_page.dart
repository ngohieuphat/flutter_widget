import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//state object
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(color: Colors.red, child: Text("ABC")),
          )),
    );
  }
}
