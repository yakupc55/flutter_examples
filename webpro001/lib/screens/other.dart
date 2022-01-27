import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webpro001/controllers/counterConroller.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen was clicked ${_counterController} times"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Open Other Screen"))
        ],
      ),
    );
  }
}
