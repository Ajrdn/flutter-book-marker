import 'package:flutter/material.dart';
import 'package:bookmarker/ui/_constant/theme/text_style.dart';

Padding bookContents({
  required String title,
  required String description,
  String? date,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: CustomTextStyle.subtitle1_700.copyWith(
                color: Colors.black,
              ),
            ),
            if (date != null) ...[
              Text(
                date,
                style: CustomTextStyle.body3_400.copyWith(
                  color: Colors.black,
                ),
              ),
            ]
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          style: CustomTextStyle.body2_400.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
