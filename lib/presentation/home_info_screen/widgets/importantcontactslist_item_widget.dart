import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';
import 'package:sih/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ImportantcontactslistItemWidget extends StatelessWidget {
  ImportantcontactslistItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController groupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomTextFormField(
        width: 314.h,
        controller: groupController,
        hintText: "Government Hospital",
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.img,
            height: 25.v,
            width: 18.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 43.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 18.h,
          top: 12.v,
          bottom: 12.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray200,
      ),
    );
  }
}
