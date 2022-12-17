import 'package:articles/Logic/Bindings/article_binding.dart';
import 'package:get/get.dart';
import '../Logic/Bindings/auth_binding.dart';
import '../Views/Screens/Articles/add_article.dart';
import '../Views/Screens/Articles/article_screen.dart';
import '../Views/Screens/Articles/category_screen.dart';
import '../Views/Screens/Auth/login_screen.dart';
import '../Views/Screens/Auth/register_screen.dart';
import '../Views/Screens/welcome_screen.dart';
import '../Views/Screens/Articles/all_articles.dart';

class AppRoute {
  //GetPage

  static final routes = [
    GetPage(name: Routes.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(
      name: Routes.registerScreen,
      page: () => RegisterScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.articleScreen,
      page: () => ArticleScreen(),
    ),
    GetPage(
      name: Routes.addArticleScreen,
      page: () => AddArticleScreen(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: Routes.categoryScreen,
      page: () => CategoryScreen(),
    ),
     GetPage(
      name: Routes.allArticles,
      page: () => AllArticles(),
      binding: ArticleBinding(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const registerScreen = '/registerScreen';
  static const loginScreen = '/loginScreen';
  static const articleScreen = '/articleScreen';
  static const addArticleScreen = '/addArticleScreen';
  static const allArticles = '/allArticles';
  static const categoryScreen = '/categoryScreen';
}
