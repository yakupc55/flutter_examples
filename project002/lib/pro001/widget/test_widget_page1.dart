import 'package:flutter/material.dart';
import 'package:project002/pro001/contants/app_text_contansts.dart';
import 'package:project002/pro001/widget/test_route_page1.dart';
import 'package:project002/pro001/widget/test_route_page2.dart';
import 'package:project002/pro001/widget/test_route_page3.dart';

class TestWidgetPage1 extends StatelessWidget {
  const TestWidgetPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/test1',
      routes: {
        '/test1': (context) => const TestRoutePage1(),
        '/test2': (context) => const TestRoutePage2(),
        '/test3': (context) => const TestRoutePage3()
      },
    );
  }
}
