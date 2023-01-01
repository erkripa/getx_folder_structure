import 'package:demo/api/api_client.dart';
import 'package:demo/constants/app_constant.dart';
import 'package:demo/controllers/home_page_controller.dart';
import 'package:demo/repos/home_repo.dart';
import 'package:get/get.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() {
    //clients
    Get.put(ApiClient(appBaseUrl: AppConstant.appBaseUrl));
    //repos
    Get.put(HomePageRepo(apiClient: Get.find()));
    //controllers
    Get.put(HomePageController(homePageRepo: Get.find()));
  }
}
