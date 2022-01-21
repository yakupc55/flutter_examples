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
              child: const Text("show test route page 2"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal)),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test3', (route) => false);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black54)),
                child: const Text("Show Test Route Page 3"))
          ],
        ),
      ),
    );
  }
}
