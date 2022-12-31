import 'package:demo/controllers/home_page_controller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => HomePageController());
}
