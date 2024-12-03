// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:expense_tracker_ui/shared/const/color.dart';
import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:expense_tracker_ui/shared/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardUtil extends StatelessWidget {
  final String mainPicPath, title, description, ctaImagePath;
  const OnboardUtil(
      {super.key,
      required this.mainPicPath,
      required this.title,
      required this.description,
      required this.ctaImagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Image.asset(mainPicPath),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 41.0, bottom: 31),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 277,
                  // height: 78,
                  child: Text(
                    title,
                    style: AppFontStyle.interBold.copyWith(color: AppColors.dark50, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  width: 272,
                  // height: 38,
                  child: Text(
                    description,
                    style: AppFontStyle.interSemiBold.copyWith(color: AppColors.light20, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 33.0),
            child: Image.asset(ctaImagePath),
          ),
          AuthButtons(loginUrlPath: "/login", signUpUrlPath: "/signup")
        ],
      ),
    );
  }
}
