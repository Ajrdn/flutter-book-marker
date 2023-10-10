import 'package:bookmarker/model/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:bookmarker/repository/book_repository.dart';
import 'package:bookmarker/model/error/error_status_data.dart';
import 'package:bookmarker/model/book/book_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookDetailGetx extends GetxController {
  static BookDetailGetx get to => Get.find();

  final BookRepository _bookRepository = BookRepository();
  ErrorStatusData errorStatusData = ErrorStatusData.empty();
  BookDetailData? book;
  String reportDate = '';
  String report = '작성한 독후감이 없습니다. \n독후감을 작성해 보세요.';

  Future<void> getBookDetailData({
    required int item,
    required bool isReport,
  }) async {
    Either<Failure, BookDetailData> successOrFailure =
        await _bookRepository.getBookDetailData(itemId: item);
    successOrFailure.fold((l) {
      l.map(
          networkError: (e) =>
              errorStatusData = errorStatusData.copyWith(isNetwork: true),
          apiError: (e) =>
              errorStatusData = errorStatusData.copyWith(isApi: true));
    }, (r) async {
      book = r;
      if (isReport) {
        final SharedPreferences pref = await SharedPreferences.getInstance();
        String? data = pref.getString(item.toString());
        if (data != null) {
          reportDate = data.split('/')[0];
          report = data.split('/')[1];
        }
      }
      errorStatusData = ErrorStatusData.empty();
      update();
    });
  }
}
