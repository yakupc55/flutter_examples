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
        title: Text("Hello World"),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.swap_calls)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100,
              color: Colors.red,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlutterLogo(size: 100),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
