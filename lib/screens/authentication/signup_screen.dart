// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:expense_tracker_ui/shared/provider/provider.dart';
import 'package:expense_tracker_ui/shared/widgets/auth_txt_fields.dart';
import 'package:expense_tracker_ui/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureText = true;
  bool? value = false;

  void toggleObscure() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController =
        Provider.of<AuthController>(context).nameController;
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
                AuthTxtField(
                  hintText: "Name",
                  controller: _nameController,
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        value: value,
                        onChanged: (newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 291,
                      child: Text(
                        "By signing up, you agree to the Terms of Service and Privacy Policy",
                        style: AppFontStyle.interSemiBold
                            .copyWith(color: AppColors.pureBlack, fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    context.go("/otp-verify");
                  },
                  child: SubmitButton(
                    color: AppColors.violet100,
                    title: "Sign Up",
                    textColor: AppColors.light80,
                    onTap: () {
                      context.go("/otp-verify");
                    },
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                "Or with",
                style: AppFontStyle.interBold
                    .copyWith(color: AppColors.light20, fontSize: 14),
              ),
              SubmitButton(
                color: AppColors.pureWhite,
                title: "Sign Up with Google",
                textColor: AppColors.dark50,
                onTap: () {},
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: AppFontStyle.interSemiBold
                        .copyWith(color: AppColors.light20, fontSize: 16),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    "Login",
                    style: AppFontStyle.interSemiBold.copyWith(
                        color: AppColors.violet100,
                        decoration: TextDecoration.underline),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
