import 'package:flutter/material.dart';
import 'package:project002/pro001/widget/stateful_widget_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: StatefulWidgetPage(),
    );
  }
}
