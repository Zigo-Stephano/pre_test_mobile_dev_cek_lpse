import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/strings.dart';
import '../../utils/custom_button.dart';
import '../../utils/text.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Strings.selamatDatang,
                  style: textH6(),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: controller.tfUsernameController,
                  style: textBody2(),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: Strings.masukanNamaPengguna,
                    hintStyle: textBody2(),
                  ),
                  validator: (value) {
                    if (value == null) return '';
                    if (value.length < 5) {
                      return Strings.validasiMinimalKarakter.trParams(
                        {
                          'attribute': 'Nama pengguna',
                          'min': '5',
                        },
                      );
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 8),
                Obx(
                  () => TextFormField(
                    controller: controller.tfPasswordController,
                    obscureText: controller.obscurePassword.value,
                    style: textBody2(),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: Strings.masukanPassword,
                      hintStyle: textBody2(),
                      suffixIcon: GestureDetector(
                          onTap: () => controller.obscurePassword.value =
                              !controller.obscurePassword.value,
                          child: Icon(controller.obscurePassword.value
                              ? Icons.visibility
                              : Icons.visibility_off)),
                    ),
                    validator: (value) {
                      if (value == null) return '';
                      if (value.length < 5) {
                        return Strings.validasiMinimalKarakter.trParams(
                          {
                            'attribute': 'Password',
                            'min': '8',
                          },
                        );
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(height: 8),
                CustomButton(
                  action: () {
                    if (formKey.currentState!.validate() == false) {
                      return;
                    } else {
                      controller.login();
                    }
                  },
                  content: Text(
                    Strings.masuk,
                    style: textSub1(color: Colors.white),
                  ),
                  radius: 24,
                  paddingVertical: 12,
                  paddingHorizontal: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
