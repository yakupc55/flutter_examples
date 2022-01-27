import 'package:get/get.dart';

class CounterController extends GetxController {
  static var counter = 0.obs;

  void increment() {
    counter++;
  }
}
