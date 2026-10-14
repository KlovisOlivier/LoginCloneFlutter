import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji/routes.dart';
import 'package:pakaji/components/custom_textfield.dart';
import 'package:pakaji/components/custom_dropdown.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoHp = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Registration Page')),
      body: Column(
        children: [
          CustomTextfield(txtController: txtNama, myHint: 'input name', isNumberOnly: false),
          CustomDropdown(controller: txtJenisKelamin, myHint: 'input gender'),
          CustomTextfield(txtController: txtAlamat, myHint: 'input address', isNumberOnly: false),
          CustomTextfield(txtController: txtEmail, myHint: 'input email', isNumberOnly: false),
          CustomTextfield(txtController: txtNoHp, myHint: 'input phone number', isNumberOnly: true),
          ElevatedButton(
            onPressed: () {
              // Navigate to the confirmation page
              Get.toNamed(Routes.confirmReg,
              arguments: {
                'name': txtNama.text.toString(),
                'jenis_kelamin': txtJenisKelamin.text.toString(),
                'alamat': txtAlamat.text.toString(),
                'email': txtEmail.text.toString(),
                'no_hp': txtNoHp.text.toString(),
              });
            },
            child: Text("Send"),
          ),
        ]
      )
    );
  }
}