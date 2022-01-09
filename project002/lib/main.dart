import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        centerTitle: true,
        title: const Text("Uber"),
        leading: Container(
          child: const Text(
            "B",
            style: TextStyle(color: Colors.black),
          ),
          color: Colors.white,
        ),
      ),
      body: Column(),
    );
  }
}
