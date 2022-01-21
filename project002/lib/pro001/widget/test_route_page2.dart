import 'package:flutter/material.dart';

class TestRoutePage2 extends StatelessWidget {
  const TestRoutePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Test Route Page 2"),
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
              child: const Text("Show Test Route Page 1"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.brown),
                  elevation: MaterialStateProperty.all(20)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/test3', (route) => false);
              },
              child: const Text("Show Test Route Page 3"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                  elevation: MaterialStateProperty.all(15)),
            )
          ],
        ),
      ),
    );
  }
}
