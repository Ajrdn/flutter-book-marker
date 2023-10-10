import 'package:get/get.dart';
import 'package:bookmarker/state/_constant/bookMarker/book_marker_getx.dart';
import 'package:bookmarker/state/auth/auth_getx.dart';
import 'package:bookmarker/state/home/main_getx.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthGetx());
    Get.put(BookMarkerGetx()..bookMarkerAppVersionCheck());
    Get.put(MainGetx());
  }
}
