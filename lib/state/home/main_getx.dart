import 'package:bookmarker/repository/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:bookmarker/model/book/book_data.dart';
import 'package:bookmarker/model/error/error_status_data.dart';
import 'package:bookmarker/model/failure/failure.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainGetx extends GetxController {
  static MainGetx get to => Get.find();

  RefreshController refreshController = RefreshController();

  bool isLastItem = false;
  bool isLoading = false;
  int pageNo = 1;
  List<BookData> books = [];
  ErrorStatusData errorStatusData = ErrorStatusData.empty();
  final BookRepository _bookRepository = BookRepository();

  void onRefresh() async {
    await getBookListData();
    refreshController.refreshCompleted();
  }

  void onLoading() async {
    await getBookListData(page: pageNo);
    refreshController.loadComplete();
  }

  Future<void> getBookListData({
    int? page,
  }) async {
    if (!isLoading) {
      isLoading = true;
      update();
      Either<Failure, List<BookData>> successOrFailure =
          await _bookRepository.getBookData(pageNo: page ?? 1);
      successOrFailure.fold((l) {
        l.map(
            networkError: (e) =>
                errorStatusData = errorStatusData.copyWith(isNetwork: true),
            apiError: (e) =>
                errorStatusData = errorStatusData.copyWith(isApi: true));
        isLoading = false;
        update();
      }, (r) async {
        final SharedPreferences pref = await SharedPreferences.getInstance();
        List<BookData> tempList = [];

        r.forEach((element) => tempList.add(element.copyWith(
            isReport: pref.getString(element.itemId.toString()) != null)));

        if (page == null) {
          books = tempList;
        } else {
          books.addAll(tempList);
        }

        pageNo += 1;
        errorStatusData = ErrorStatusData.empty();
        isLoading = false;
        if (r.length < 20) {
          isLastItem = true;
        }
        update();
      });
    }
  }

  Future updateBookInfo({
    required int itemId,
  }) async {
    int temp = books.indexWhere((element) => element.itemId == itemId);
    books[temp] = books[temp].copyWith(isReport: true);
    update();
  }
}
