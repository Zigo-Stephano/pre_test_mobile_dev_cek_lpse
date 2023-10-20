import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../base/strings.dart';
import '../../utils/util.dart';

class LoginController extends BaseController {
  TextEditingController tfUsernameController = TextEditingController();
  TextEditingController tfPasswordController = TextEditingController();

  var obscurePassword = Rx(true);

  login() async {
    var result = await apiService.login();
    if (result.data != null) {
      Get.toNamed(Strings.mainRoute, arguments: result.data!.toJson());
    } else {
      dialogError(msg: Strings.gagalLogin);
    }
  }
}
