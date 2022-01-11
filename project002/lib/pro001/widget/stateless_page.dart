import 'package:flutter/material.dart';
import 'package:project002/pro001/widget/contants/app_color_contansts.dart';
import 'package:project002/pro001/widget/contants/app_text_contansts.dart';

class StatelessPAge extends StatelessWidget {
  const StatelessPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppTextContants.appBarSecondPageTitle),
      ),
      body: Column(
        children: [
          FadeInImage.assetNetwork(
              fadeInCurve: Curves.linear,
              placeholder: 'assets/images/img1.jpg',
              repeat: ImageRepeat.repeat,
              fadeInDuration: Duration(seconds: 2),
              image: 'https://picsum.photos/384/450')
        ],
      ),
    );
  }
}
