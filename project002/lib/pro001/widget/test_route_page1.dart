import 'package:flutter/material.dart';

class TestRoutePage1 extends StatelessWidget {
  const TestRoutePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("test page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test2', (route) => false);
                },
                child: const Text("show test route page 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test3', (route) => false);
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent)),
                child: const Text("show test route page 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test4', (route) => false);
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueGrey)),
                child: const Text("show test route page 4"))
          ],
        ),
      ),
    );
  }
}
