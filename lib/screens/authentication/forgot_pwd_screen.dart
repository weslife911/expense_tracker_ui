// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:expense_tracker_ui/shared/provider/provider.dart';
import 'package:expense_tracker_ui/shared/widgets/auth_txt_fields.dart';
import 'package:expense_tracker_ui/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ForgotPWDScreen extends StatefulWidget {
  const ForgotPWDScreen({super.key});

  @override
  State<ForgotPWDScreen> createState() => _ForgotPWDScreenState();
}

class _ForgotPWDScreenState extends State<ForgotPWDScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController =
        Provider.of<AuthController>(context).emailController;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: AppFontStyle.interSemiBold
              .copyWith(color: AppColors.dark50, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 69.0, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 343,
              child: Text(
                "Don't worry. Enter your email and we'll send youa link to reset your password.",
                style: AppFontStyle.interSemiBold
                    .copyWith(color: AppColors.dark100, fontSize: 24),
              ),
            ),
            SizedBox(
              height: 46,
            ),
            AuthTxtField(hintText: "Email", controller: _emailController),
            SizedBox(
              height: 32,
            ),
            SubmitButton(
                color: AppColors.violet100,
                title: "Continue",
                textColor: AppColors.light80,
                onTap: () {
                  context.go("/email-sent");
                })
          ],
        ),
      ),
    );
  }
}
