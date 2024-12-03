import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/images.dart';
import 'package:expense_tracker_ui/shared/utils/onboard_util.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenThree extends StatefulWidget {
  const OnBoardingScreenThree({super.key});

  @override
  State<OnBoardingScreenThree> createState() => _OnBoardingScreenThreeState();
}

class _OnBoardingScreenThreeState extends State<OnBoardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      body: OnboardUtil(mainPicPath: AppImages.onboardIllustrationTwo, title: "Planning ahead", description: "Setup your budget for each category, so you are in control", ctaImagePath: AppImages.onboardIndicatorTwo),
    );
  }
}