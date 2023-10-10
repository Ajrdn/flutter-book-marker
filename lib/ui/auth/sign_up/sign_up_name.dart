import 'package:bookmarker/ui/_constant/theme/book_marker_reg_exp.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:bookmarker/state/auth/auth_getx.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';
import 'package:bookmarker/ui/_constant/theme/colors.dart';
import 'package:bookmarker/ui/_constant/button/app_custom_button.dart';

class SignUpName extends StatelessWidget {
  const SignUpName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthGetx>(builder: (x) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 80.0,
                            bottom: 16.0,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: '안녕하세요.\n',
                              style: CustomTextStyle.headline1_700.copyWith(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: '이름',
                                  style: CustomTextStyle.headline1_700.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '을 입력해주세요.',
                                  style: CustomTextStyle.headline1_700,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.p800,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 9.0,
                                horizontal: 16.0,
                              ),
                              hintText: '이름이 뭐예요?',
                              hintStyle: CustomTextStyle.body2_500.copyWith(
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            style: CustomTextStyle.body2_500.copyWith(
                              color: Colors.black,
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(
                                RegExp(r'''[\n\s]*$'''),
                              ),
                              FilteringTextInputFormatter.deny(
                                  BookMarkerRegExp.withOutEmoji),
                            ],
                            onChanged: (value) => x.changedName(text: value),
                          ),
                        ),
                      ],
                    ),
                  ),
                  wideSquareBoxWithText(
                    text: '완료',
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      x.signUpName();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
