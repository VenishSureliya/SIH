import 'package:flutter/material.dart';
import 'package:sih/core/app_export.dart';
import 'package:sih/widgets/custom_checkbox_button.dart';
import 'package:sih/widgets/custom_elevated_button.dart';
import 'package:sih/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMeCheckBox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                            horizontal: 36.h, vertical: 54.v),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtBack(context);
                                  },
                                  child: Text("Back",
                                      style: theme.textTheme.labelLarge))),
                          Spacer(flex: 47),
                          Text("Login",
                              style: CustomTextStyles.titleMediumWhiteA700),
                          SizedBox(height: 16.v),
                          Container(
                              width: 216.h,
                              margin: EdgeInsets.only(left: 36.h, right: 35.h),
                              child: Text(
                                  "Please log in to access your disaster information tools and stay prepared.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMedium13
                                      .copyWith(height: 1.45))),
                          SizedBox(height: 46.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "Email",
                              textInputType: TextInputType.emailAddress),
                          SizedBox(height: 18.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true),
                          SizedBox(height: 18.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildRememberMeCheckBox(context),
                                Text("Forgot password?",
                                    style: CustomTextStyles.bodyMedium13)
                              ]),
                          SizedBox(height: 46.v),
                          CustomElevatedButton(
                              width: 120.h,
                              text: "Login",
                              onPressed: () {
                                onTapLogin(context);
                              }),
                          SizedBox(height: 33.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtNewmemberregister(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "New member? ",
                                        style: CustomTextStyles
                                            .bodyMediumBluegray100_1),
                                    TextSpan(
                                        text: "Register",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          Spacer(flex: 52)
                        ]))))));
  }

  /// Section Widget
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: CustomCheckboxButton(
            text: "Remember me",
            value: rememberMeCheckBox,
            onChange: (value) {
              rememberMeCheckBox = value;
            }));
  }

  /// Navigates to the registrationScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrationScreen);
  }

  /// Navigates to the homeInfoScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeInfoScreen);
  }

  /// Navigates to the registrationScreen when the action is triggered.
  onTapTxtNewmemberregister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrationScreen);
  }
}
