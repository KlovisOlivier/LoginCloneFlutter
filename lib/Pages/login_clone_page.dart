import 'package:flutter/material.dart';
import 'package:pakaji/widgets/custom_textfield.dart';
import 'package:pakaji/widgets/custom_button.dart';
import 'package:pakaji/controller/login_api_controller.dart';
import 'package:get/get.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({Key? key}) : super(key: key);

  final controller = Get.put(LoginApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1,
                ),
              ),
              const SizedBox(height: 35),

              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKWbnitPpgYPuE0TaoKaEPAfsKzuNzceltg4NUOIY-A&s=10',
                height: 250,
              ),

              const SizedBox(height: 40),
              TextField(
                controller: controller.txtUsername,
                decoration: const InputDecoration(
                  hintText: 'Phone number, username or email',
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
                        text: 'Log In',
                        onPressed: () {
                          controller.login();
                        },
                      ),
              ),
              const SizedBox(height: 300),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.all_inclusive, color: Colors.grey, size: 18),
                  SizedBox(width: 4),
                  Text(
                    "Meta",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
