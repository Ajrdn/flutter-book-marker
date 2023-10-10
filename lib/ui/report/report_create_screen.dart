import 'package:bookmarker/state/report/report_getx.dart';
import 'package:bookmarker/ui/_constant/appBar/custom_app_bar.dart';
import 'package:bookmarker/ui/_constant/button/app_custom_button.dart';
import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../_constant/dialog/custom_dialog.dart';

class ReportCreateScreen extends StatelessWidget {
  final int itemId;
  final bool isUpdate;
  final String title;

  const ReportCreateScreen({
    required this.itemId,
    required this.title,
    this.isUpdate = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReportGetx>(
        init: ReportGetx()
          ..started(
            itemId: itemId,
            isUpdate: isUpdate,
          ),
        builder: (x) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              appBar: customAppBar(backAction: () {
                FocusScope.of(context).unfocus();
                customDialog(
                  title: '독후감 작성 취소',
                  description: '작생했던 내용은 저장되지 않습니다. \n정말 그만 작성하시겠습니까?',
                  onTap: () {
                    Get
                      ..back()
                      ..back();
                  },
                );
              }),
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 16.0,
                            ),
                            child: Text(
                              title,
                              style: CustomTextStyle.body1_700.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Divider(
                            height: 8.0,
                            thickness: 8.0,
                            color: CustomColors.p500,
                          ),
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 24.0,
                              ),
                              width: double.infinity,
                              height: double.infinity,
                              child: TextFormField(
                                controller: x.reportController,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: '어떤 책이었나요?',
                                  hintStyle: CustomTextStyle.body2_400,
                                  border: InputBorder.none,
                                ),
                                style: CustomTextStyle.body2_400,
                                onChanged: (value) =>
                                    x.changedReport(text: value),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: wideSquareBoxWithText(
                        text: isUpdate ? '수정 완료' : '완료',
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          customDialog(
                            title: '독후감 ${isUpdate ? '수정' : '저장'}',
                            description: '독후감 ${isUpdate ? '수정' : '저장'}하시겠습니까?',
                            onTap: () {
                              x.submitReport(
                                  isUpdate: isUpdate, itemId: itemId);
                            },
                            isReverse: true,
                          );
                        },
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
