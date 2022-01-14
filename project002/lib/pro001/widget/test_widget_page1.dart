import 'package:flutter/material.dart';
import 'package:project002/pro001/contants/app_text_contansts.dart';

class TestWidgetPage1 extends StatelessWidget {
  const TestWidgetPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppTextContants.appBarTestPage1),
      ),
    );
  }
}
