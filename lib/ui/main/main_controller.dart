import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../base/model/user.dart';
import '../../base/strings.dart';
import '../../utils/util.dart';

class MainController extends BaseController {
  User user = User();
  @override
  void onInit() {
    user = User.fromJson(Get.arguments);
    super.onInit();
  }

  logout() {
    dialogConfirm(
      firstAction: () {
        Get.offAllNamed(Strings.loginRoute);
      },
      firstTextButton: Strings.ya,
      secondTextButton: Strings.tidak,
      msg: Strings.konfirmasiLogout,
      title: Strings.perhatian,
    );
  }
}
