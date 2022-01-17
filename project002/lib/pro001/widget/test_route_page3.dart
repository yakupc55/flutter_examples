import 'package:flutter/material.dart';

class TestRoutePage3 extends StatelessWidget {
  const TestRoutePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("test route page 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test1', (route) => false);
                },
                child: const Text("show test route page 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test2', (route) => false);
                },
                child: const Text("show test route page 2"))
          ],
        ),
      ),
    );
  }
}
