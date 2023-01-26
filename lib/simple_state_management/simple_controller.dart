import 'package:get/get.dart';

class SimpleController extends GetxController {
  int counter = 0;

  void incrementCounter() {
    counter++;
    update();
  }
}
