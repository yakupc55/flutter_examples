import 'package:flutter/material.dart';
import 'package:project002/pro001/widget/test_route_page1.dart';

class TestRoutePage2 extends StatelessWidget {
  const TestRoutePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("test page 2"),
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
                      .pushNamedAndRemoveUntil('/test3', (route) => false);
                },
                child: const Text("show test route page 3"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.amber.withAlpha(120))),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/test4', (route) => false);
                },
                child: const Text("show test route page 4"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                ),
              ),
            ],
          ),
        ));
  }
}
