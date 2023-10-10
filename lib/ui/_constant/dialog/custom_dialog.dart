import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> customDialog({
  required String title,
  required String description,
  required Function() onTap,
  bool isReverse = false,
}) async {
  await Get.dialog(
    AlertDialog(
      elevation: 0,
      titlePadding: const EdgeInsets.all(0),
      insetPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      backgroundColor: Colors.white,
      title: SizedBox(
        width: Get.width - 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 32,
              ),
              child: Text(
                title,
                style: CustomTextStyle.subtitle1_700.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              description,
              style: CustomTextStyle.body3_400.copyWith(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: isReverse
                          ? () {
                              Get.back();
                            }
                          : onTap,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        color: isReverse ? Colors.grey[200] : CustomColors.p500,
                        alignment: Alignment.center,
                        child: Text(
                          isReverse ? '취소' : '확인',
                          style: CustomTextStyle.body1_400.copyWith(
                            color: isReverse ? Colors.grey[800] : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: !isReverse
                          ? () {
                              Get.back();
                            }
                          : onTap,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        color:
                            !isReverse ? Colors.grey[200] : CustomColors.p500,
                        alignment: Alignment.center,
                        child: Text(
                          !isReverse ? '취소' : '확인',
                          style: CustomTextStyle.body1_400.copyWith(
                            color: !isReverse ? Colors.grey[800] : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
