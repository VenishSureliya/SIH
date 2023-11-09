import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';

// ignore: must_be_immutable
class FloodsafetyItemWidget extends StatelessWidget {
  const FloodsafetyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      width: 148.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Floods",
              style: CustomTextStyles.labelLargeGray900,
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 124.h,
            child: Text(
              "it's crucial to prioritize safety above all else. Start by staying informed and heeding weather alerts and flood warnings issued by local authorities. If they recommend evacuation, follow their guidance promptly.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallGray700.copyWith(
                height: 1.45,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 124.h,
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "Know more..",
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
