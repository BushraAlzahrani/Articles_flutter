import 'package:articles/Router/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/auth_controller.dart';
import '../../../Service/auth_service.dart';
import '../../../Utils/colors.dart';
import '../../Widgets/Auth/auth_textfield.dart';
import '../../Widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
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
                    text: 'User Name',
                    controller: controller.userNameTextController,
                    obscureText: false,
                  ),
                  AuthTextFromField(
                    text: 'Email',
                    controller: controller.emailTextController,
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
                  textColor: mainColor,
                      buttonColor: secondaryColor,
                      text: 'Sgin Up',
                      onPressed: () {
                        authApiClient.registerUser(
                            controller.userNameTextController.text,
                            controller.emailTextController.text,
                            controller.passwordTextController.text);
                        Get.offNamed(Routes.loginScreen);
                      })
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
