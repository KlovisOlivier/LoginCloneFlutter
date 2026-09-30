import 'package:flutter/material.dart';
import 'package:pakaji/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String statuslogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Text("Welcome to the Login Page" + statuslogin.toString(), style: TextStyle(fontSize: 24, color: Colors.blue, fontStyle: FontStyle.italic)),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              isNumberOnly: false,
              txtController: txtUsername,
              myHint: "input username",
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
          child: CustomTextfield(
            isNumberOnly: false,
            txtController: txtPassword,
            myHint: "input password",
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if(username == "admin" && password == "password") {
                  setState(() {
                    statuslogin = " - Admin";
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Sukses")));
                } else {
                  setState(() {
                    statuslogin = " - Gagal";
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Gagal")));
                }
              },child : Text("Login")),
              ElevatedButton(onPressed: () {},child : Text("Register")),
            ],
            ),
          ],
        ),
    );
  }
}