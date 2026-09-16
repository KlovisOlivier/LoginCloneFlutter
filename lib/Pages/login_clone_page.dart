import 'package:flutter/material.dart';
import 'package:pakaji/widgets/custom_textfield.dart';
import 'package:pakaji/widgets/custom_button.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({Key? key}) : super(key: key);

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
              // Judul Instagram
              const Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1,
                ),
              ),
              const SizedBox(height: 40),

              // Username / Email Field
              const CustomTextfield(
                hintText: 'Phone number, username or email',
              ),
              const SizedBox(height: 12),

              // Password Field
              const CustomTextfield(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 18),

              // Tombol Login
              CustomButton(
                text: 'Log In',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}