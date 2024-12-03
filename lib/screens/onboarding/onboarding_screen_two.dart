import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/images.dart';
import 'package:expense_tracker_ui/shared/utils/onboard_util.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenTwo extends StatefulWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  State<OnBoardingScreenTwo> createState() => _OnBoardingScreenTwoState();
}

class _OnBoardingScreenTwoState extends State<OnBoardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      body: OnboardUtil(mainPicPath: AppImages.onboardIllustrationOne, title: "Know where your money goes", description: "Track your transaction easily, with categories and financial report", ctaImagePath: AppImages.onboardIndicatorOne),
    );
  }
}