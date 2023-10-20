import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/strings.dart';
import '../../utils/text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
    );
  }

  AppBar appbar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(Icons.arrow_back),
      ),
      title: Text(
        Strings.profile,
        style: textH5(),
      ),
    );
  }
}
