import 'package:expense_tracker_ui/shared/const/fonts.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final Color? color;
  final String title;
  final Color? textColor;
  final Function() onTap;
  const SubmitButton({
    super.key,
    required this.color,
    required this.title,
    required this.textColor, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          width: 343,
          height: 56,
          child: Center(
            child: Text(
              title,
              style: AppFontStyle.interSemiBold
                  .copyWith(color: textColor, fontSize: 18),
            ),
          )),
    );
  }
}
