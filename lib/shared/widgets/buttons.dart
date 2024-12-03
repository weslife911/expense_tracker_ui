// ignore_for_file: prefer_const_constructors

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthButtons extends StatelessWidget {
  final String loginUrlPath;
  final String signUpUrlPath;
  const AuthButtons(
      {super.key, required this.loginUrlPath, required this.signUpUrlPath,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubmitButton(
            color: AppColors.violet100,
            title: "Sign Up",
            textColor: AppColors.pureWhite,
            onTap: () {
              context.go(loginUrlPath);
            },
          ),
          SizedBox(
            height: 16,
          ),
          SubmitButton(
            color: AppColors.violet20,
            title: "Login",
            textColor: AppColors.violet100,
            onTap: () {
              context.go(signUpUrlPath);
            },
          ),
        ],
      ),
    );
  }
}
