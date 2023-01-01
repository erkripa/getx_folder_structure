import 'package:demo/api/api_client.dart';
import 'package:demo/constants/app_constant.dart';
import 'package:get/get.dart';

class HomePageRepo {
  final ApiClient apiClient;
  HomePageRepo({required this.apiClient});

  //getList of users
  Future<Response> getAllUsers() async {
    return await apiClient.getData(AppConstant.allUsersUri);
  }
}
