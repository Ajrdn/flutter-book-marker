import 'package:get/get.dart';
import 'package:bookmarker/ui/main/book_marker_app.dart';
import 'package:bookmarker/ui/detail/book_detail_screen.dart';

List<GetPage> appRouter = [
  GetPage(
    name: '/',
    page: () => const BookMarkerApp(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  ),
  GetPage(
    name: '/book/:itemId',
    page: () => BookDetailScreen(),
  ),
];
