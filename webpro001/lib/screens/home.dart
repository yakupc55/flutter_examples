import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webpro001/controllers/counterConroller.dart';
import 'package:webpro001/screens/other.dart';

class HomwScreen extends StatelessWidget {
  const HomwScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Clicks: ${CounterController.counter.value}"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(OtherScreen());
              },
              child: const Text("Open Other Screen"))
        ],
      ),
    );
  }
}
