import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePageWidget());
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: const HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Hoşgeldiniz,",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
            ),
          ),
          MainPageSearchAreaWidget(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Geçmiş Yolculuklarınız",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8.0,
          ),
          CardLocationWidget(),
          SizedBox(height: 8.0),
          CardLocationWidget(),
          SizedBox(height: 8.0),
          CardLocationWidget(),
          SizedBox(height: 8.0),
          CardLocationWidget(),
          SizedBox(height: 8.0),
          CardLocationWidget(),
          SizedBox(height: 8.0),
          CardLocationWidget(),
          SizedBox(height: 8.0),
          CardLocationWidget(),
        ],
      ),
    );
  }
}

class CardLocationWidget extends StatelessWidget {
  const CardLocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: const [
            Icon(
              Icons.local_taxi_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                "KadıKöy - Ataşehir",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "58,80₺",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class MainPageSearchAreaWidget extends StatelessWidget {
  const MainPageSearchAreaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              height: 50,
              color: Colors.blueGrey.withOpacity(0.35),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Ara"),
                ),
              ),
            ),
          ),
        ),
        const Icon(Icons.search)
      ],
    );
  }
}

class MyAppBar extends AppBar {
  MyAppBar({Key? key})
      : super(
            key: key,
            backgroundColor: Colors.black,
            elevation: 4,
            centerTitle: true,
            leading: const MyAppBarLeading(),
            title: const Text("Uber"),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.supervised_user_circle_rounded),
              )
            ]);
}

class MyAppBarLeading extends StatelessWidget {
  const MyAppBarLeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            "B",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
