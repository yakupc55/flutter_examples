import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: const Center(
              child: Text(
                "B",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.supervised_user_circle_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              "Hoşgeldiniz,",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
