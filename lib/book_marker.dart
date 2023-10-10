import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/ui/_constant/theme/app_scroll_behavior.dart';
import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/state/_constant/bookMarker/init_binding.dart';
import 'package:bookmarker/ui/router/app_route.dart';

class BookMarker extends StatelessWidget {
  const BookMarker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
        return ScrollConfiguration(
          behavior: AppScrollBehavior(),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: child ?? const SizedBox(),
          ),
        );
      },
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark),
        fontFamily: 'SpoqaHanSans-Regular',
        primaryColor: Colors.white,
        primarySwatch: bookMarkerPrimarySwatch,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.cupertino,
      initialBinding: InitBinding(),
      initialRoute: '/',
      getPages: appRouter,
    );
  }
}
