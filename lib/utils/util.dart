import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../base/strings.dart';
import 'text.dart';

void dialogTextField({
  required String title,
  required String textConfirm,
  required void Function() confirm,
  required TextEditingController controller,
  required GlobalKey<FormState> formKey,
  String? Function(String?)? validasi,
  TextInputType? inputType,
}) async {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: controller,
                        keyboardType: inputType,
                        style: textBody2(),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: validasi,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(0, 45),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Colors.lightGreen,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => Get.back(),
                              child: Text(
                                Strings.batal,
                                style: textSub2(color: Colors.lightGreen),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFFFFFF),
                                backgroundColor: Colors.lightGreen,
                                minimumSize: const Size(0, 45),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: confirm,
                              child: Text(
                                textConfirm,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

void dialogConfirm({
  required String title,
  required String msg,
  required String firstTextButton,
  String? secondTextButton,
  required void Function() firstAction,
  void Function()? secondAction,
}) {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      msg,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size(0, 45),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.lightGreen,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: secondAction ?? () => Get.back(),
                            child: Text(
                              secondTextButton ?? Strings.kembali,
                              style: textSub2(color: Colors.lightGreen),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreen,
                              minimumSize: const Size(0, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: firstAction,
                            child: Text(
                              firstTextButton,
                              style: textSub2(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

void dialogCancel({
  required String title,
  required String firstTextButton,
  required Widget content,
}) {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    content,
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size(0, 45),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.lightGreen,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () => Get.back(),
                            child: Text(
                              firstTextButton,
                              style: textSub2(color: Colors.lightGreen),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

void dialogError({required String msg}) {
  dialogOneButton(
    title: Strings.kesalahan,
    msg: msg,
    firstTextButton: Strings.kembali,
    firstAction: () => Get.back(),
  );
}

void dialogOneButton({
  required String title,
  required String msg,
  required String firstTextButton,
  void Function()? firstAction,
}) {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      msg,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFFFFFFFF),
                              backgroundColor: Colors.lightGreen,
                              minimumSize: const Size(0, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: firstAction ?? () => Get.back(),
                            child: Text(
                              firstTextButton,
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

void dialogTwoButton({
  required String title,
  required String msg,
  required String firstTextButton,
  required String secondTextButton,
  required void Function() firstAction,
  required void Function() secondAction,
}) {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      msg,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: const Color(0xFFFFFFFF),
                                  backgroundColor: Colors.lightGreen,
                                  minimumSize: const Size(0, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: secondAction,
                                child: Text(
                                  secondTextButton,
                                  style: textSub2(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: const Color(0xFFFFFFFF),
                                  backgroundColor: Colors.lightGreen,
                                  minimumSize: const Size(0, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: firstAction,
                                child: Text(
                                  firstTextButton,
                                  style: textSub2(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Expanded(
                              flex: 2,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: const Size(0, 45),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Colors.lightGreen,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () => Get.back(),
                                child: Text(
                                  Strings.kembali,
                                  style: textSub2(color: Colors.lightGreen),
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

void dialogThreeButton({
  required String title,
  required String msg,
  required String firstTextButton,
  required String secondTextButton,
  required String thirdTextButton,
  required void Function() firstAction,
  required void Function() secondAction,
  required void Function() thirdAction,
}) {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: textH7(),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      msg,
                      textAlign: TextAlign.center,
                      style: textBody1(),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: const Color(0xFFFFFFFF),
                                  backgroundColor: Colors.lightGreen,
                                  minimumSize: const Size(0, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: secondAction,
                                child: Text(
                                  secondTextButton,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: const Color(0xFFFFFFFF),
                                  backgroundColor: Colors.lightGreen,
                                  minimumSize: const Size(0, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: firstAction,
                                child: Text(
                                  firstTextButton,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Expanded(
                              flex: 2,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: const Color(0xFFFFFFFF),
                                  backgroundColor: Colors.lightGreen,
                                  minimumSize: const Size(0, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: thirdAction,
                                child: Text(
                                  thirdTextButton,
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
