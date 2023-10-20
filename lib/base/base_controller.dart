import 'package:get/get.dart';
import 'remote/api_service.dart';

class BaseController extends GetxController {
  final ApiService apiService = Get.find();
}
