import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';

class BookMarkerSplashScreen extends StatelessWidget {
  const BookMarkerSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: CustomColors.p500,
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: DefaultTextStyle(
              style:
                  CustomTextStyle.headline1_700.copyWith(color: Colors.black),
              child: const Text('BOOK MARKER'),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: DefaultTextStyle(
              style: CustomTextStyle.caption.copyWith(color: Colors.black),
              child: Text('created by gyeongsin'),
            ),
          ),
        ],
      ),
    );
  }
}
