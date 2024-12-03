// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:expense_tracker_ui/shared/provider/provider.dart';
import 'package:expense_tracker_ui/shared/widgets/auth_txt_fields.dart';
import 'package:expense_tracker_ui/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool obscureText = true;

  void toggleObscure() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController =
        Provider.of<AuthController>(context).emailController;
    final TextEditingController _pwdController =
        Provider.of<AuthController>(context).pwdController;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: AppFontStyle.interSemiBold
              .copyWith(color: AppColors.dark50, fontSize: 18),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: AuthTxtField(
                    hintText: "Email",
                    controller: _emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 17.0),
                  child: AuthTxtField(
                    hintText: "Password",
                    controller: _pwdController,
                    obscureText: obscureText,
                    onPressed: toggleObscure,
                    type: "pwd",
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {},
                  child: SubmitButton(
                    color: AppColors.violet100,
                    title: "Login",
                    textColor: AppColors.light80,
                    onTap: () {},
                  )),
              SizedBox(
                height: 33,
              ),
              GestureDetector(
                onTap: () {
                  context.go("/forget-pwd");
                },
                child: Text(
                  "Forgot Password?",
                  style: AppFontStyle.interBold
                      .copyWith(color: AppColors.violet100, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet?",
                    style: AppFontStyle.interSemiBold
                        .copyWith(color: AppColors.light20, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go("/signup");
                    },
                    child: Text(
                      "Sign Up",
                      style: AppFontStyle.interSemiBold.copyWith(
                          color: AppColors.violet100,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
