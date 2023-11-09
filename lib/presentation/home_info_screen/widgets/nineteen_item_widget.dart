import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';

// ignore: must_be_immutable
class NineteenItemWidget extends StatelessWidget {
  const NineteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Amarnath Floods",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray200,
      selectedColor: appTheme.gray200,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          7.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
