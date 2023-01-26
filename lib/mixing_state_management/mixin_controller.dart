import 'dart:async';

import 'package:get/get.dart';

class MixinController extends GetxController with StateMixin<int> {
  int counter = 0;


  @override
  void onInit() async{
    await Future.delayed(const Duration(seconds: 1), ()=> change(counter, status: RxStatus.success()));

    super.onInit();
  }
  void incrementCounter() {
    counter++;
    change(counter, status: RxStatus.success());
  }
}
