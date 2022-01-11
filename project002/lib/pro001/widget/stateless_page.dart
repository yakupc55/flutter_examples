import 'package:flutter/material.dart';
import 'package:project002/pro001/widget/contants/app_color_contansts.dart';
import 'package:project002/pro001/widget/contants/app_text_contansts.dart';
import 'package:kartal/kartal.dart';

class StatelessPAge extends StatelessWidget {
  const StatelessPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppTextContants.appBarSecondPageTitle),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.5),
              width: context.dynamicWidth(0.5),
              child: const _fadeImageShow(),
            ),
            const Divider(
              thickness: 20,
              color: AppColorContants.dividerColorTheme,
            ),
            const FlutterLogo(
              size: 50,
            ),
            const _showListText(),
          ],
        ),
      ),
    );
  }
}

class _fadeImageShow extends StatelessWidget {
  const _fadeImageShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
        fadeInCurve: Curves.linear,
        placeholder: 'assets/images/img1.jpg',
        repeat: ImageRepeat.repeat,
        fadeInDuration: const Duration(seconds: 2),
        image: 'https://picsum.photos/384/450');
  }
}

class _showListText extends StatelessWidget {
  const _showListText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Padding(
                  padding: context.paddingMedium,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTextContants.programmingLanguageFirst,
                        style: context.textTheme.headline4,
                      ),
                      const Divider(
                        thickness: 22,
                      ),
                      Text(
                        AppTextContants.programmingLanguageSecond,
                        style: context.textTheme.headline4,
                      ),
                    ],
                  ),
                ));
      },
      child: const _showListButton(),
    );
  }
}

class _showListButton extends StatelessWidget {
  const _showListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(AppTextContants.showProgrammingLanguage,
        style: context.textTheme.headline3
            ?.copyWith(color: context.colorScheme.error));
  }
}
