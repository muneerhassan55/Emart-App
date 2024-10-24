// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets/app_logo_widget.dart';
import 'package:emart_app/widgets/bg_widget.dart';
import 'package:emart_app/widgets/custom_textfield.dart';
import 'package:emart_app/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          'SignUp to $appname'.text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: nameHint, title: name),
              5.heightBox,
              customTextField(hint: emailHint, title: email),
              5.heightBox,
              customTextField(title: password, hint: passwordHint),
              5.heightBox,
              customTextField(title: retypepassword, hint: passwordHint),
              10.heightBox,
              Row(
                children: [
                  Checkbox(
                      checkColor: redColor,
                      value: false,
                      onChanged: (newValue) {}),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'I agree to the ',
                          style: TextStyle(fontFamily: bold, color: fontGrey)),
                      TextSpan(
                          text: termAndCond,
                          style: TextStyle(fontFamily: bold, color: redColor)),
                      TextSpan(
                          text: ' & ',
                          style: TextStyle(fontFamily: bold, color: fontGrey)),
                      TextSpan(
                          text: privayPolicy,
                          style: TextStyle(fontFamily: bold, color: redColor))
                    ])),
                  )
                ],
              ),
              20.heightBox,
              ourButton(
                      color: redColor,
                      title: signUp,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey)),
                TextSpan(
                    text: login,
                    style: TextStyle(fontFamily: bold, color: redColor)),
              ])).onTap(() {
                Get.back();
              })
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make()
        ],
      )),
    ));
  }
}
