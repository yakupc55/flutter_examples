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
            child: const Text("show Route Test Page 1"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/test2', (route) => false);
              },
              child: const Text("show route test page 2"))
        ],
      )),
    );
  }
}
