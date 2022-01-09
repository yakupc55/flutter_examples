import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
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
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Hoşgeldiniz,",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
            ),
          ),
          Row(
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
                            padding: EdgeInsets.only(left: 8),
                            child: Text("Ara"),
                          ))),
                ),
              ),
              const Icon(Icons.search),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "Geçmiş yolculuklarınız",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8.0),
          Container(
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
                      "Kadıköy - Ataşehir",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    "56,90₺",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
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
          title: const Text("Uber"),
          leading: const MyAppBarLeading(),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.supervised_user_circle_outlined),
            )
          ],
        );
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
        child: const Center(
          child: Text(
            "B",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
