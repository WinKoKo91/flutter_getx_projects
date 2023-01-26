import 'package:get/get.dart';

class ReactiveController extends GetxController {
  var _counter = 0.obs;

  get counter => _counter.value;

  void incrementCounter() {
    _counter++;
  }
}
