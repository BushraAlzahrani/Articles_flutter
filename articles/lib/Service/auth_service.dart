import 'dart:convert';
import 'package:articles/Logic/Controller/auth_controller.dart';
import 'package:articles/Router/Routes.dart';
import 'package:articles/Utils/colors.dart';
import 'package:articles/Utils/string_utils.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final authController = Get.put(AuthController());

  void registerUser(String username, String email, String password) async {
    try {
      final response = await http.post(Uri.parse('${baseURL}register/'), body: {
        "username": username,
        "email": email,
        "password": password,
      });
      if (response.statusCode == 200) {
        print('added user');
      } else {
        print('error can not add user');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void login(String username, String password) async {
    // String userToken = '';
    // var storage = GetStorage();

    try {
      final response = await http.post(Uri.parse('${baseURL}login/'), body: {
        "username": username,
        "password": password,
      });
      if (response.statusCode == 200) {
        Get.snackbar(
          "Succes",
          "Login Succes",
          snackPosition: SnackPosition.TOP,
          backgroundColor: whiteColor,
        );
        var data = jsonDecode(response.body.toString());
        authController.userToken = data['token'];
        authController.storage.write('userToken', authController.userToken);
        print('this is the user token ${authController.userToken}');
        Get.offNamed(Routes.addArticleScreen);
        print('login user');
      } else {
        print('error can not login user');
        var data = jsonDecode(response.body.toString());
        print(data);
        Get.snackbar(
          "Faild",
          data.toString(),
          snackPosition: SnackPosition.TOP,
          backgroundColor: whiteColor,
        );
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
