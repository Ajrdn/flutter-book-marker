import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customSnackBar({
  required String text,
}) {
  ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      elevation: 0,
      content: SafeArea(
        bottom: false,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: CustomTextStyle.body2_400.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: CustomColors.p500,
      duration: const Duration(
        milliseconds: 1000,
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 40,
      ),
      padding: const EdgeInsets.all(
        13,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
    ),
  );
}
