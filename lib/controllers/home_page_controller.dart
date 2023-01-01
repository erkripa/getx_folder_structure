import 'dart:developer';

import 'package:demo/global/k_enum.dart';
import 'package:demo/ids/app_ids.dart';
import 'package:demo/models/user_model.dart';
import 'package:demo/repos/home_repo.dart';
import 'package:demo/routes/routes.dart';
import 'package:get/get.dart';

import '../utils/response_model.dart';

class HomePageController extends GetxController {
  final HomePageRepo homePageRepo;
  HomePageController({required this.homePageRepo});
  //
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

  void navigateToProfilePage() {
    Get.toNamed(AppRoutes.getProfilePage);
  }

  //

  RxList<User> _userList = <User>[].obs;
  RxList<User> get userList => _userList;

  Rx<LoadingStatus> loadingStatus = LoadingStatus.loadingStatus.obs;

  //getAll Users
  Future<ResponseModel> getAllUsers() async {
    loadingStatus.value = LoadingStatus.loading;
    //
    Response response = await homePageRepo.getAllUsers();

    late ResponseModel responseModel;
    if (response.statusCode == 200 || response.statusCode == 201) {
      responseModel = ResponseModel(true, "Loaded Succefully");
      userList.value =
          List<User>.from(response.body.map((x) => User.fromJson(x)));

      log(userList.length.toString());
      log(response.body.toString());
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    //
    loadingStatus.value = LoadingStatus.completed;
    return responseModel;
  }

  //
  @override
  Future<void> onReady() async {
    log("first called onready");
    super.onReady();
  }

  @override
  Future<void> onInit() async {
    log("second called onit");
    await getAllUsers();

    super.onInit();
  }
}
