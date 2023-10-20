import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/strings.dart';
import '../../utils/text.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

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
        Strings.collection,
        style: textH5(),
      ),
    );
  }
}
