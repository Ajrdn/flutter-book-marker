import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/state/_constant/bookMarker/book_marker_getx.dart';
import 'package:bookmarker/ui/splash/book_marker_splash_screen.dart';
import 'package:bookmarker/state/auth/auth_getx.dart';
import 'package:bookmarker/ui/main/book_marker_main.dart';
import 'package:bookmarker/ui/auth/sign_up/sign_up_name.dart';

class BookMarkerApp extends StatelessWidget {
  const BookMarkerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return GetBuilder<BookMarkerGetx>(builder: (bookMarker) {
      if (bookMarker.isVersionChecking) {
        return const BookMarkerSplashScreen();
      } else {
        return GetBuilder<AuthGetx>(builder: (auth) {
          if (auth.isSplash) {
            return const BookMarkerSplashScreen();
          } else {
            if (auth.isGoToMain) {
              return const BookMarkerMain();
            } else {
              return const SignUpName();
            }
          }
        });
      }
    });
  }
}
