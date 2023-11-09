import '../home_info_screen/widgets/emergencycontactslist_item_widget.dart';
import '../home_info_screen/widgets/floodsafety_item_widget.dart';
import '../home_info_screen/widgets/importantcontactslist_item_widget.dart';
import '../home_info_screen/widgets/nineteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';
import 'package:sih/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sih/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:sih/widgets/app_bar/appbar_title.dart';
import 'package:sih/widgets/app_bar/appbar_trailing_switch.dart';
import 'package:sih/widgets/app_bar/custom_app_bar.dart';

class HomeInfoScreen extends StatelessWidget {
  HomeInfoScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgRegistration,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 37.v),
                      _buildAppBar(context),
                      SizedBox(height: 32.v),
                      SizedBox(
                        height: 682.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 678.v,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: appTheme.gray300,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(64.h),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 25.v),
                                decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL64,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Spacer(),
                                    _buildImportantContactsList(context),
                                    SizedBox(height: 31.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 23.h),
                                      child: Text(
                                        "Your Emergency Contacts",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    SizedBox(height: 9.v),
                                    _buildEmergencyContactsList(context),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildRecentOccurrences(context),
              _buildSafetyMeasures(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      title: Padding(
        padding: EdgeInsets.only(left: 32.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Welcome",
            ),
            AppbarSubtitleOne(
              text: "Venish!!",
              margin: EdgeInsets.only(right: 41.h),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 7.v,
            right: 17.h,
          ),
          child: Column(
            children: [
              AppbarTrailingSwitch(
                value: false,
                onTap: (value) {
                  isSelectedSwitch = value;
                },
              ),
              AppbarSubtitleTwo(
                text: "Information Mode",
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildImportantContactsList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 8.v,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return ImportantcontactslistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmergencyContactsList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 74.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 23.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return EmergencycontactslistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOccurrences(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 161.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Occurrences",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 11.v),
            Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children:
                  List<Widget>.generate(5, (index) => NineteenItemWidget()),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSafetyMeasures(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 306.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: Row(
                children: [
                  Text(
                    "Safety Measures",
                    style: theme.textTheme.titleMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 137.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "See more",
                      style: CustomTextStyles.bodySmallLight,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              height: 91.v,
              child: ListView.separated(
                padding: EdgeInsets.only(right: 23.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 18.h,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return FloodsafetyItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
