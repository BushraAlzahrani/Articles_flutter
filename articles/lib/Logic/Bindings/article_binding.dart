import 'package:get/get.dart';
import '../Controller/article_controller.dart';

class ArticleBinding extends Bindings{

  @override
  void dependencies() {
   Get.put(ArticleController());

  }}