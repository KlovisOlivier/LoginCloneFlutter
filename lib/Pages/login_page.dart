import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/controller/login_controller.dart';
import 'package:pakaji/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              TextField(
                controller: controller.txtUsername,
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.txtPassword,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 18),
              Obx(
                () => controller.isLoading.value
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        child: Text("Login"),
                        onPressed: () {
                          controller.login();
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
