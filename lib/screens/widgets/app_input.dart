import 'package:base_auth_settings/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  String hintText;
  String labelText;
  bool obscureText;
  TextEditingController textEditingController;
  Icon icon;
  Widget suffixIcon;

  AppInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.textEditingController,
    required this.icon,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5), // add padding to adjust icon
          child: icon,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.backGroundColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        suffixIcon: suffixIcon,
      ),
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your height';
      //   }
      //   return null;
      // },
    );
  }
}
