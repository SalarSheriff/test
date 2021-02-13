import "package:flutter/material.dart";

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State {
  void btnPressed() {
    setState(() {
      counter = counter + 1;
    });
  }

  var counter = 0;
  TextStyle labelStyle = new TextStyle(
    fontSize: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("HELLO")),
      body: Column(
        children: [
          Text(
            counter.toString(),
            style: labelStyle,
          ),
          RaisedButton(
            child: Text("Press Me!"),
            onPressed: btnPressed,
          )
        ],
      ),
    );
  }
}
