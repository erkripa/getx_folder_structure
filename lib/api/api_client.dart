import 'dart:developer';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token = '';
  late String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    token = token;
    baseUrl = appBaseUrl;
    _mainHeaders = {
      'Content-type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
  }

  //get data
  Future<Response> getData(
    String endsPointUri, {
    Map<String, String>? headers,
  }) async {
    Response response;
    try {
      response = await get(
        endsPointUri,
        headers: headers ?? _mainHeaders,
      );
    } catch (e) {
      response = Response(statusCode: 1, statusText: e.toString());
      log(e.toString());
    }
    return response;
  }
}
