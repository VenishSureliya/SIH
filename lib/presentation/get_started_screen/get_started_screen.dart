import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';
import 'package:sih/widgets/custom_elevated_button.dart';
import 'package:sih/widgets/custom_outlined_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGetStarted),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 520.v,
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle40,
                                    height: 520.v,
                                    width: 360.h,
                                    radius: BorderRadius.vertical(
                                        bottom: Radius.circular(15.h)),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            27.h, 18.v, 18.h, 2.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomElevatedButton(
                                                  height: 28.v,
                                                  width: 56.h,
                                                  text: "Skip",
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineBlack,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargeMedium,
                                                  onPressed: () {
                                                    onTapSkip(context);
                                                  },
                                                  alignment:
                                                      Alignment.centerRight),
                                              Spacer(),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Earthquake",
                                                        style: CustomTextStyles
                                                            .titleSmallWhiteA700),
                                                    TextSpan(
                                                        text:
                                                            ", any sudden shaking of the ground.",
                                                        style: theme.textTheme
                                                            .bodyMedium)
                                                  ]),
                                                  textAlign: TextAlign.left)
                                            ])))
                              ])),
                          Spacer(),
                          Container(
                              width: 261.h,
                              margin: EdgeInsets.only(left: 27.h, right: 71.h),
                              child: Text(
                                  "Your Essential Buddy. Stay Safe, Stay Informed, and Stay Ahead with Real-time Updates and Government Alerts.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!
                                      .copyWith(height: 1.45))),
                          SizedBox(height: 17.v),
                          CustomOutlinedButton(
                              width: 183.h,
                              text: "Get Started",
                              margin: EdgeInsets.only(left: 27.h),
                              rightIcon: Container(
                                  margin: EdgeInsets.only(left: 15.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgFlag,
                                      height: 19.v,
                                      width: 36.h)),
                              onPressed: () {
                                onTapGetStarted(context);
                              }),
                          SizedBox(height: 48.v)
                        ])))));
  }

  /// Navigates to the homeInfoScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeInfoScreen);
  }

  /// Navigates to the registrationScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrationScreen);
  }
}
