import 'dart:io';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookmarker/state/home/main_getx.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:bookmarker/ui/_constant/thumbnail/book_thumbnail.dart';
import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/ui/_constant/footer/custom_refresh_footer.dart';
import 'package:bookmarker/state/auth/auth_getx.dart';

class BookMarkerMain extends StatelessWidget {
  const BookMarkerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainGetx>(builder: (x) {
      return Scaffold(
        body: SafeArea(
          child: SmartRefresher(
            enablePullDown: Platform.isIOS ? false : true,
            enablePullUp: true,
            onRefresh: () {
              x.onRefresh();
            },
            onLoading: () {
              x.onLoading();
            },
            header: MaterialClassicHeader(
              color: CustomColors.p500,
            ),
            footer: customRefreshFooter(isLastItem: false),
            controller: x.refreshController,
            child: CustomScrollView(
              slivers: [
                if (Platform.isIOS) ...[
                  CupertinoSliverRefreshControl(
                    refreshTriggerPullDistance: 40.0,
                    refreshIndicatorExtent: 30.0,
                    onRefresh: () async {},
                  ),
                ],
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 72.0,
                      bottom: 16.0,
                      right: 20.0,
                      left: 20.0,
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: '안녕하세요.\n',
                        style: CustomTextStyle.headline1_700.copyWith(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: AuthGetx.to.name.value,
                            style: CustomTextStyle.headline1_700.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: '님!',
                            style: CustomTextStyle.headline1_700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      addAutomaticKeepAlives: true,
                      childCount: (x.books.length % 2 == 0
                          ? x.books.length ~/ 2
                          : (x.books.length ~/ 2) + 1),
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 32.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              bookListThumbnail(
                                itemId: x.books[index * 2].itemId,
                                isReport: x.books[index * 2].isReport ?? false,
                                title: x.books[index * 2].title,
                                author: x.books[index * 2].author,
                                imageUrl: x.books[index * 2].imageUrl,
                              ),
                              if ((index * 2) + 1 < x.books.length) ...[
                                bookListThumbnail(
                                  itemId: x.books[(index * 2) + 1].itemId,
                                  isReport: x.books[(index * 2) + 1].isReport ??
                                      false,
                                  title: x.books[(index * 2) + 1].title,
                                  author: x.books[(index * 2) + 1].author,
                                  imageUrl: x.books[(index * 2) + 1].imageUrl,
                                ),
                              ]
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
