import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../base/strings.dart';

class Loading {
  static void get show {
    if ((Get.isDialogOpen == null || Get.isDialogOpen == false) &&
        Get.isSnackbarOpen == false) {
      openLoadingDialog(false);
    }
    return;
  }

  static void get showDismissable {
    if ((Get.isDialogOpen == null || Get.isDialogOpen == false) &&
        Get.isSnackbarOpen == false) {
      openLoadingDialog(true);
    }
    return;
  }

  static void get dismiss {
    if (Get.isDialogOpen == true || Get.isSnackbarOpen == true) {
      return Get.back();
    }
    return;
  }
}

openLoadingDialog(bool dismiss) {
  return Get.defaultDialog(
    title: 'Loading',
    content: WillPopScope(
      onWillPop: () async => dismiss,
      child: Lottie.asset(Strings.loadingLottie, width: 60),
    ),
    barrierDismissible: dismiss,
  );
}
