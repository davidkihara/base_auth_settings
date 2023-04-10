import 'package:base_auth_settings/screens/auth/login.dart';
import 'package:base_auth_settings/screens/widgets/app_button.dart';
import 'package:base_auth_settings/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/1187.jpg"),
            AppButton(
              text: "Get Started",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
