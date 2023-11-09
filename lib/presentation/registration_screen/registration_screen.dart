import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';
import 'package:sih/widgets/app_bar/appbar_subtitle.dart';
import 'package:sih/widgets/app_bar/custom_app_bar.dart';
import 'package:sih/widgets/custom_elevated_button.dart';
import 'package:sih/widgets/custom_radio_button.dart';
import 'package:sih/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController contactNoLabelController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_male", "lbl_female"];

  TextEditingController addressController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgRegistration),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 37.h, vertical: 30.v),
                        child: Column(children: [
                          _buildFullName(context),
                          SizedBox(height: 18.v),
                          _buildEmail(context),
                          SizedBox(height: 18.v),
                          _buildPassword(context),
                          SizedBox(height: 18.v),
                          _buildContactNoLabel(context),
                          SizedBox(height: 29.v),
                          _buildGender(context),
                          SizedBox(height: 7.v),
                          Container(
                              padding:
                                  EdgeInsets.fromLTRB(14.h, 7.v, 14.h, 6.v),
                              decoration: AppDecoration.outlineWhiteA,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 12.v),
                                        child: Text("Age Group",
                                            style: theme.textTheme.bodyMedium)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector1,
                                        height: 6.v,
                                        width: 12.h,
                                        margin: EdgeInsets.only(
                                            left: 12.h, top: 17.v, bottom: 8.v))
                                  ])),
                          SizedBox(height: 25.v),
                          _buildAddress(context),
                          SizedBox(height: 48.v),
                          _buildRegister(context),
                          SizedBox(height: 33.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyamember(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already a member? ",
                                        style: CustomTextStyles
                                            .bodyMediumBluegray100_1),
                                    TextSpan(
                                        text: "Login",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 37.h),
            child: Row(children: [
              Container(
                  height: 17.000004.v,
                  width: 28.h,
                  margin: EdgeInsets.only(top: 4.v, bottom: 3.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtBack(context);
                            },
                            child: Text("Back",
                                style: theme.textTheme.labelLarge))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Back", style: theme.textTheme.labelLarge))
                  ])),
              AppbarSubtitle(
                  text: "Registration", margin: EdgeInsets.only(left: 59.h))
            ])));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController, hintText: "Full Name");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildContactNoLabel(BuildContext context) {
    return CustomTextFormField(
        controller: contactNoLabelController, hintText: "Contact No.");
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Row(children: [
          CustomRadioButton(
              text: "Male",
              value: radioList[0],
              groupValue: radioGroup,
              onChange: (value) {
                radioGroup = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: CustomRadioButton(
                  text: "Female",
                  value: radioList[1],
                  groupValue: radioGroup,
                  onChange: (value) {
                    radioGroup = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
        controller: addressController,
        hintText: "Address",
        textInputAction: TextInputAction.done,
        maxLines: 5,
        borderDecoration: TextFormFieldStyleHelper.outlineWhiteATL10);
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        width: 120.h,
        text: "Register",
        onPressed: () {
          onTapRegister(context);
        });
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }

  /// Navigates to the homeInfoScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeInfoScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyamember(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
