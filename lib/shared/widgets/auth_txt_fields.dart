import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:flutter/material.dart';

class AuthTxtField extends StatelessWidget {
  final String? hintText, type;
  final TextEditingController controller;
  final IconData? suffixIcon;
  final Function()? onPressed;
  final bool obscureText;
  const AuthTxtField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.suffixIcon,
      this.onPressed, this.obscureText=false, this.type});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.light60,
            width: 1
          )
        ),
        suffixIcon: type == "pwd" && obscureText ? IconButton(onPressed: onPressed, icon: Icon(Icons.remove_red_eye_outlined, color: AppColors.light20,)) : type == "pwd" && !obscureText ? IconButton(onPressed: onPressed, icon: Icon(Icons.remove_red_eye, color: AppColors.light20,)) : null
      ),
    );
  }
}
