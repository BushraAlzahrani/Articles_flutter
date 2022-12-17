import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/auth_controller.dart';
import '../../../Router/Routes.dart';
import '../../../Service/auth_service.dart';
import '../../../Utils/colors.dart';
import '../../Widgets/Auth/auth_textfield.dart';
import '../../Widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = Get.find<AuthController>();
  AuthService authApiClient = AuthService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Center(
          child: Container(
            height: 500,
            width: 360,
            color: whiteColor,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
                child: Column(children: [
                  AuthTextFromField(
                    text: 'Username',
                    controller: controller.userNameTextController,
                    obscureText: false,
                  ),
                  AuthTextFromField(
                    text: 'Password',
                    controller: controller.passwordTextController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      text: 'Login',
                      textColor: mainColor,
                      buttonColor: secondaryColor,
                      onPressed: () {
                        authApiClient.login(
                            controller.userNameTextController.text,
                            controller.passwordTextController.text);
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                      text: 'New account',
                      textColor: mainColor,
                      buttonColor: whiteColor,
                      onPressed: () {
                        Get.toNamed(Routes.registerScreen);
                      }),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
