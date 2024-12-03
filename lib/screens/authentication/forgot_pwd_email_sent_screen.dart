// ignore_for_file: prefer_const_constructors

import 'package:expense_tracker_ui/shared/const/images.dart';
import 'package:expense_tracker_ui/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:go_router/go_router.dart';

class PwdSentSuccessScreen extends StatefulWidget {
  const PwdSentSuccessScreen({super.key});

  @override
  State<PwdSentSuccessScreen> createState() => _PwdSentSuccessScreenState();
}

class _PwdSentSuccessScreenState extends State<PwdSentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.authIllustration),
                  SizedBox(height: 18,),
                  Text("Your email is on the way",
                      style: AppFontStyle.interSemiBold
                          .copyWith(color: AppColors.dark100, fontSize: 24)),
                  SizedBox(height: 24,),
                  Text(
                    "Check your email test@test.com and follow the instructions to reset your password",
                    style: AppFontStyle.interSemiBold
                        .copyWith(color: AppColors.dark25, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: SubmitButton(
                  color: AppColors.violet100,
                  title: "Back to Login",
                  textColor: AppColors.pureWhite,
                  onTap: () {
                    context.go("/login");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
