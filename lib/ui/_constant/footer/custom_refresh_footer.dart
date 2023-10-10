import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

CustomFooter customRefreshFooter({
  required bool isLastItem,
}) {
  return CustomFooter(
    height: 0.0,
    builder: (context, mode) {
      if (isLastItem) {
        return Container();
      }
      Widget? body;
      if (mode == LoadStatus.canLoading) {
        return body = Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 12.0,
            ),
            child: CircularProgressIndicator(
              color: CustomColors.p500,
            ),
          ),
        );
      } else if (mode == LoadStatus.failed) {
        return body = Container();
      } else if (mode == LoadStatus.idle) {
        return body = Container();
      } else if (mode == LoadStatus.loading) {
        return body = Container();
      } else {
        return Container(
          child: body,
        );
      }
    },
  );
}
