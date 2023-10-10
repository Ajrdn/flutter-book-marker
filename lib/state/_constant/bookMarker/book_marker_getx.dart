import 'package:bookmarker/state/auth/auth_getx.dart';
import 'package:get/get.dart';

class BookMarkerGetx extends GetxController {
  static BookMarkerGetx get to => Get.find();

  bool isVersionChecking = false;

  Future<void> bookMarkerAppVersionCheck() async {
    isVersionChecking = true;
    update();
    Future.delayed(const Duration(milliseconds: 500), () async {
      print('버전체크 완료!');
      isVersionChecking = false;
      update();
      await AuthGetx.to.checkName();
    });
  }
}
