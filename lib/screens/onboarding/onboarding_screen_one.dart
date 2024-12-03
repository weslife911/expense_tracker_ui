import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/images.dart';
import 'package:expense_tracker_ui/shared/utils/onboard_util.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenOne extends StatefulWidget {
  const OnBoardingScreenOne({super.key});

  @override
  State<OnBoardingScreenOne> createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      body: OnboardUtil(mainPicPath: AppImages.onboardIllustration, title: "Gain total control of your money", description: "Become your own money manager and make every cent count", ctaImagePath: AppImages.onboardIndicator),
    );
  }
}