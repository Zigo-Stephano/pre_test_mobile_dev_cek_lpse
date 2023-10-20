import 'dart:convert';
import 'package:dio/dio.dart';
import '../../utils/loading.dart';
import '../../utils/util.dart';
import '../model/base_response.dart';
import '../model/user.dart';
import '../strings.dart';
import 'dart:math';

class ApiService {
  late Dio service;

  ApiService() {
    service = Dio();

    service.options = BaseOptions(
      baseUrl: Strings.baseUrl,
      responseType: ResponseType.json,
      sendTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );
  }

  // Get data user random
  Future<BaseResponse<User>> login() async {
    var id = Random().nextInt(100);
    return BaseResponse.fromJson(
      await getRequests("users/$id", null),
      (data) => User.fromJson(data),
    );
  }

  getRequests(String url, List<Map<String, dynamic>>? params) async {
    if (params != null) {
      url = "$url?";
      for (var element in params) {
        element.map((key, value) {
          url = "$url$key=$value";
          return element[key];
        });
        url = "$url&";
      }
      url = url.substring(0, url.length - 1);
    }
    try {
      Loading.show;
      var result = await service.get(url);
      var response = result.data;
      Loading.dismiss;
      print("RESULT: $response");
      return response;
    } on DioError catch (e) {
      Loading.dismiss;
      dialogError(msg: e.message.toString());
    } catch (e) {
      Loading.dismiss;
      dialogError(msg: e.toString());
    }
  }

  postRequest(String url, Map<String, dynamic> map) async {
    try {
      Loading.show;
      var result = await service.post(url, data: map);
      var response = result.data;
      Loading.dismiss;
      return response;
    } on DioError catch (e) {
      Loading.dismiss;
      dialogError(msg: e.message.toString());
    } catch (e) {
      Loading.dismiss;
      dialogError(msg: e.toString());
    }
  }
}
