import 'package:flutter/material.dart';
import 'package:project002/pro001/widget/contants/app_color_contansts.dart';
import 'package:project002/pro001/widget/contants/app_text_contansts.dart';
import 'package:project002/pro001/widget/stateless_page.dart';

class StatefulWidgetPage extends StatefulWidget {
  const StatefulWidgetPage({Key? key}) : super(key: key);

  @override
  _StatefulWidgetPageState createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppTextContants.appBarTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Placeholder(
            strokeWidth: 8,
            fallbackHeight: 200,
            fallbackWidth: 100,
            color: AppColorContants.placeHolderColor,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.star,
              color: AppColorContants.iconColorTheme,
              size: 80,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StatelessPAge()));
              },
              child: const Text(AppTextContants.buttonNextPage))
        ],
      ),
    );
  }
}
