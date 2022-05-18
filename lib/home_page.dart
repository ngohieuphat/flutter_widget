import 'package:flutter/cupertino.dart';
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
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text("item ${index + 1}"),
                  subtitle: Text("ABC D"),
                  leading: Image.asset("assets/icons/ic_radiator.png"),
                  trailing: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("tap on item")));
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
