import 'package:demo/ids/app_ids.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  int _counter = 0;
  int get conter => _counter;

  RxInt _counter1 = 0.obs;
  RxInt get counter1 => _counter1;

  //obx increment counter
  void get obsIncremnetCounter => _obsIncremnetCounter();

  void _obsIncremnetCounter() {
    _counter1.value++;
  }

  //increment
  void get incremnetCounter => _incrementCounter();
  void _incrementCounter() {
    _counter++;
    update([AppId.couterId]);
  }
}
