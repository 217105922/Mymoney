import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoney/screen/auth/login/login_screen.dart';
import 'package:mymoney/utils/buttons_widget.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/textformfild.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackGroundC,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: pageBackGroundC,
        title: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Change Password",
            style: TextStyle(
              fontSize: 26,
              color: black1,
              fontFamily: "NunitoBold",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: black1,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Container(
          height: 760,
          width: Get.width,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
              child: Column(
                children: [
                  textFromFieldDesign1(
                    hint: "New password",
                    iconWidget1: Icon(
                      Icons.visibility_outlined,
                      color: gray4,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  textFromFieldDesign1(
                    hint: "Repeat password",
                    iconWidget1: Icon(
                      Icons.visibility_outlined,
                      color: gray4,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  resetButton(
                    textLabel: "Change Password",
                    onTapButton: () {
                      Get.off(
                        LogInScreen(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}