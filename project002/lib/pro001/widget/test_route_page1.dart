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
              child: const Text("show route test page 2"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/test3', (route) => false);
              },
              child: const Text("show route test page 3"),
              style: ButtonStyle(elevation: MaterialStateProperty.all(8)),
            )
          ],
        ),
      ),
    );
  }
}
