import 'package:bookmarker/state/detail/book_detail_getx.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/ui/_constant/appBar/custom_app_bar.dart';
import 'package:bookmarker/ui/detail/widgets/book_detail_contents.dart';
import 'package:bookmarker/ui/_constant/thumbnail/book_thumbnail.dart';

class BookDetailScreen extends StatelessWidget {
  final int itemId = int.parse(Get.parameters['itemId'].toString());
  final bool isReport =
      Get.parameters['isReport'].toString() == 'true' ? true : false;

  BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookDetailGetx>(builder: (x) {
      return Scaffold(
        appBar: customAppBar(
          itemId: itemId,
          isReport: isReport,
          title: x.book!.title,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: bookDetailThumbnail(
                  isReport: isReport,
                  title: x.book!.title,
                  author: x.book!.author,
                  imageUrl: x.book!.imageUrl,
                ),
              ),
              bookContents(
                title: '책소개',
                description: x.book!.introduce,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Divider(
                  height: 8.0,
                  thickness: 8.0,
                  color: Colors.grey[200],
                ),
              ),
              bookContents(
                title: '독후감',
                description: x.report,
                date:
                    x.reportDate.isNotEmpty ? '최근 작성일 : ${x.reportDate}' : null,
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      );
    });
  }
}
