import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:bookmarker/state/detail/book_detail_getx.dart';

GestureDetector bookListThumbnail({
  required int itemId,
  required bool isReport,
  required String title,
  required String author,
  required String imageUrl,
}) {
  return GestureDetector(
    onTap: () {
      Get.put(BookDetailGetx())
          .getBookDetailData(item: itemId, isReport: isReport)
          .then((value) => Get.toNamed('/book/$itemId?isReport=$isReport'));
    },
    child: Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: ((Get.width - 56) / 2) + 5,
            ),
            Container(
              width: (Get.width - 56) / 2,
              height: (((Get.width - 56) / 2) * 248) / 167,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8.0,
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Visibility(
              visible: isReport,
              child: Positioned(
                top: 8.0,
                right: 0.0,
                child: Image.asset(
                  'assets/images/book_report.png',
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: SizedBox(
            width: ((Get.width - 56) / 2) + 5,
            child: Text(
              title,
              style: CustomTextStyle.body1_500.copyWith(
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Container(
          width: ((Get.width - 56) / 2) + 5,
          alignment: Alignment.centerRight,
          child: Text(
            author,
            style: CustomTextStyle.body3_400.copyWith(
              color: Colors.black,
            ),
            maxLines: 2,
          ),
        ),
      ],
    ),
  );
}

Padding bookDetailThumbnail({
  required bool isReport,
  required String title,
  required String author,
  required String imageUrl,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: GestureDetector(
      onTap: () {
        // Get.toNamed('/book/$itemId?isReport=$isReport');
      },
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(width: 235),
              Container(
                width: 230,
                height: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(4, 4),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Visibility(
                visible: isReport,
                child: Positioned(
                  top: 8.0,
                  right: 0.0,
                  child: Image.asset(
                    'assets/images/book_report.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: CustomTextStyle.body1_500.copyWith(
                  color: Colors.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              author,
              textAlign: TextAlign.center,
              style: CustomTextStyle.body3_400.copyWith(
                color: Colors.black,
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    ),
  );
}
