import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';

// ignore: must_be_immutable
class EmergencycontactslistItemWidget extends StatelessWidget {
  const EmergencycontactslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 3.h),
          decoration: AppDecoration.fillGray200.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Container(
                width: 65.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Text(
                  "J",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "Jay",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
