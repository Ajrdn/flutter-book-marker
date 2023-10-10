import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/ui/report/report_create_screen.dart';

AppBar customAppBar({
  Function()? backAction,
  int? itemId,
  bool? isReport,
  String? title,
}) {
  return AppBar(
    elevation: 0.0,
    toolbarHeight: 56.0,
    leading: GestureDetector(
      onTap: backAction ?? () => Get.back(),
      child: SvgPicture.asset(
        'assets/svg/back.svg',
        width: 24.0,
        height: 24.0,
        fit: BoxFit.none,
      ),
    ),
    actions: isReport == null
        ? null
        : [
            GestureDetector(
              onTap: () => Get.to(() => ReportCreateScreen(
                    itemId: itemId!,
                    isUpdate: isReport,
                    title: title!,
                  )),
              child: SvgPicture.asset(
                'assets/svg/${isReport ? 'edit' : 'write'}.svg',
                width: 24.0,
                height: 24.0,
                fit: BoxFit.none,
              ),
            ),
            const SizedBox(width: 20),
          ],
  );
}
