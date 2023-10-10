import 'package:bookmarker/state/home/main_getx.dart';
import 'package:bookmarker/ui/_constant/snackbar/custom_snackbar.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReportGetx extends GetxController {
  static ReportGetx get to => Get.find();
  TextEditingController reportController = TextEditingController();

  Future started({
    required int itemId,
    required bool isUpdate,
  }) async {
    if (isUpdate) {
      final SharedPreferences pref = await SharedPreferences.getInstance();
      String? data = pref.getString(itemId.toString());
      if (data != null) {
        reportController.text = data.split('/')[1];
      }
      update();
    }
  }

  void changedReport({required String text}) {
    reportController.text = text;
    update();
  }

  Future submitReport({
    required bool isUpdate,
    required int itemId,
  }) async {
    String today =
        '${DateTime.now().year}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().day.toString().padLeft(2, '0')}';
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref
        .setString(itemId.toString(), '$today/${reportController.text}')
        .then((value) async {
      await MainGetx.to.updateBookInfo(itemId: itemId);
      Get
        ..back()
        ..back()
        ..back();
      customSnackBar(text: '독후감이 ${isUpdate ? '수정' : '저장'}되었습니다.');
    });
  }
}
