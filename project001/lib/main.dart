import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Worlds"),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(color: Colors.blue, fontSize: 48),
        ),
      ),
    );
  }
}
