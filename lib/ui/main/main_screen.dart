import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/strings.dart';
import '../../utils/text.dart';
import 'main_controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int backPressTime = 0;
    return WillPopScope(
      onWillPop: () async {
        if (backPressTime + 3000 > DateTime.now().millisecondsSinceEpoch) {
          return true;
        } else {
          backPressTime = DateTime.now().millisecondsSinceEpoch;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(Strings.validasiTutupAplikasi),
          ));
          return false;
        }
      },
      child: Scaffold(
        appBar: appbar(),
        drawer: drawer(),
        body: Center(
          child: Text(
            Strings.selamatDatang,
            style: textH7(),
          ),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Text(
        Strings.beranda,
        style: textH4(),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: AppBar().preferredSize.height),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  itemDrawer(
                    () {
                      Get.back();
                      Get.toNamed(Strings.postRoute);
                    },
                    Strings.post,
                  ),
                  const Divider(color: Colors.grey),
                  itemDrawer(
                    () {
                      Get.back();
                      Get.toNamed(Strings.collectionRoute);
                    },
                    Strings.collection,
                  ),
                  const Divider(color: Colors.grey),
                  itemDrawer(
                    () {
                      Get.back();
                      Get.toNamed(Strings.profileRoute);
                    },
                    Strings.profile,
                  ),
                  const Divider(color: Colors.grey),
                  itemDrawer(
                    () {
                      Get.back();
                      Get.toNamed(Strings.settingsRoute);
                    },
                    Strings.settings,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.back();
                controller.logout();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.logout,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Icon(Icons.logout),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget itemDrawer(void Function() action, String title) {
    return InkWell(
      onTap: action,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.maxFinite,
        color: Colors.white,
        child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
