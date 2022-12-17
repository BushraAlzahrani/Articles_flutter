import 'package:articles/Router/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  TextEditingController userNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  var storage = GetStorage();
  String userToken = '';

  void signOutFromApp(){
    storage.write('userToken', '');
    update();
    print('in signOutFromApp');
    Get.back();
  }
}
