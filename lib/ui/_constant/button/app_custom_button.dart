import 'package:flutter/material.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:bookmarker/ui/_constant/theme/colors.dart';

GestureDetector wideSquareBoxWithText({
  required String text,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(
        bottom: 24.0,
      ),
      width: double.infinity,
      height: 48.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: CustomColors.p500,
      ),
      child: Text(
        text,
        style: CustomTextStyle.body2_500.copyWith(
          color: Colors.black,
        ),
      ),
    ),
  );
}
