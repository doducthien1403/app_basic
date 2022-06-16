import 'package:flutter/material.dart';
import 'package:login/models/user.dart';
import 'package:login/screen/users_screen.dart';

import '../widget/login_button.dart';
import '../widget/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Login",
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
              const SizedBox(height: 20),
              TextFieldLogin(
                label: "Username",
                hinText: "Enter username",
                textController: usernameController,
              ),
              const SizedBox(height: 20),
              TextFieldLogin(
                label: "Password",
                hinText: "Enter password",
                textController: passwordController,
              ),
              const SizedBox(height: 20),
              LoginButton(
                textLogin: "Login",
                press: () {
                  try {
                    if (usernameController.text == listUser[1].username &&
                        passwordController.text == listUser[1].password) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UsersScreen()));
                    }
                  } catch (e) {
                    print("Exception: $e");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
