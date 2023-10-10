import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_data.freezed.dart';
part 'book_data.g.dart';

@freezed
class BookData with _$BookData {
  const factory BookData({
    required String title,
    required int itemId,
    required String author,
    required String imageUrl,
    bool? isReport,
  }) = _BookData;

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
}

@freezed
class BookDetailData with _$BookDetailData {
  const factory BookDetailData({
    required String title,
    required String author,
    required String imageUrl,
    required String introduce,
  }) = _BookDetailData;

  factory BookDetailData.fromJson(Map<String, dynamic> json) =>
      _$BookDetailDataFromJson(json);
}
