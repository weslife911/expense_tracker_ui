// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:expense_tracker_ui/shared/const/images.dart';
import 'package:expense_tracker_ui/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verification",
          style: AppFontStyle.interSemiBold
              .copyWith(color: AppColors.dark50, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 195, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 343,
              child: Text(
                "Enter your Verification Code",
                style: AppFontStyle.interSemiBold
                    .copyWith(color: AppColors.dark100, fontSize: 36),
              ),
            ),
            SizedBox(
              height: 53,
            ),
            Image.asset(AppImages.onboardAuthOTPPic),
            SizedBox(
              height: 47,
            ),
            Text(
              "04:59",
              style: AppFontStyle.interSemiBold
                  .copyWith(color: AppColors.violet100, fontSize: 18),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 321,
              child: Text(
                  "We sent verification code to your email brajaoma****@gmail.com. You can check your inbox",
                  style: AppFontStyle.interSemiBold
                      .copyWith(color: AppColors.dark50, fontSize: 16)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "I didn't receive the code? Send again",
              style: AppFontStyle.interSemiBold.copyWith(
                  color: AppColors.violet100,
                  fontSize: 16,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 46,
            ),
            SubmitButton(
                color: AppColors.violet100,
                title: "Verify",
                textColor: AppColors.pureWhite,
                onTap: () {
                  context.go("/login");
                })
          ],
        ),
      ),
    );
  }
}
