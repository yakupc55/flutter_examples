import 'package:flutter/material.dart';
import 'package:project002/pro001/contants/app_text_contansts.dart';

class TestWidgetPage2 extends StatelessWidget {
  const TestWidgetPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(AppTextContants.appBarTestPage2)),
      body: LogoApp(),
    );
  }
}

class LogoApp extends StatefulWidget {
  LogoApp({Key? key}) : super(key: key);

  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  late final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 300,
      width: 300,
      child: const FlutterLogo(),
    ));
  }
}
