import 'package:flutter/material.dart';

class TestRoutePage3 extends StatelessWidget {
  const TestRoutePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Test Route Page 3"),
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
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  elevation: MaterialStateProperty.all(8)),
              child: const Text("Show Test route page 1"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test2', (route) => false);
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue.shade300)),
                child: const Text("Show Test Route Page 2"))
          ],
        ),
      ),
    );
  }
}