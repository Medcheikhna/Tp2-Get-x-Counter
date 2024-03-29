import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

  void resetIncrement() {
    count.value = 0;
  }
}
