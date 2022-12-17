import 'package:articles/Logic/Controller/article_controller.dart';
import 'package:get/get.dart';
import '../Controller/auth_controller.dart';

class AuthBinding extends Bindings{

  @override
  void dependencies() {
   Get.put(AuthController());
   Get.put(ArticleController());

  }}