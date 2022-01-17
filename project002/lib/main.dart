import 'package:flutter/material.dart';
import 'package:project002/pro001/widget/stateful_widget_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // genel olarak flutterı materiall app üzerinden oluştururuz.
      title: 'Material App', // bu programımızın ismini içeren kısım
      debugShowCheckedModeBanner: false, // debug moddayken çıkarn bir bannerı açıp kapamamıza yarar
      home: StatefulWidgetPage(), // bu projemizi başlattığımız wigit oluyor
    );
  }
}
