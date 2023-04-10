import 'package:base_auth_settings/screens/widgets/app_button.dart';
import 'package:base_auth_settings/screens/widgets/app_input.dart';
import 'package:base_auth_settings/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  static const String email = "tony@gmail.com";
  final bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleEmailIcon() {
    setState(() {
      final bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Welcome Back!\nLogin to Continue"),
            const Text("LOREMIPSUM"),
            AppInput(
                hintText: "Email",
                labelText: "Email",
                obscureText: false,
                textEditingController: emailTextEditingController,
                icon: Icon(
                  Icons.email,
                  color: AppColors.backGroundColor,
                ),
                suffixIcon: emailValid
                    ? (const Icon(Icons.close_rounded, color: Colors.red))
                    : (const Icon(Icons.check_circle, color: Colors.green))),
            AppInput(
              hintText: "Password",
              labelText: "Password",
              obscureText: _obscureText,
              textEditingController: passwordTextEditingController,
              icon: Icon(
                Icons.lock,
                color: AppColors.backGroundColor,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  _toggle();
                },
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.backGroundColor,
                ),
              ),
            ),
            AppButton(text: "Login", onPress: () {})
          ],
        ),
      ),
    );
  }
}
