import 'package:flutter/material.dart';

class TestRoutePage1 extends StatelessWidget {
  const TestRoutePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Test Route Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/test2', (route) => false);
              },
              child: const Text("Show Test Route Page 2"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  elevation: MaterialStateProperty.all(8)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/test3', (route) => false);
              },
              child: const Text("Show Test Route Page 3"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  elevation: MaterialStateProperty.all(12)),
            )
          ],
        ),
      ),
    );
  }
}
