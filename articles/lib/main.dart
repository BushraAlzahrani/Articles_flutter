import 'package:articles/Logic/Bindings/article_binding.dart';
import 'package:articles/Logic/Bindings/auth_binding.dart';
import 'package:articles/Router/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.welcomeScreen,
          getPages: AppRoute.routes,
          initialBinding: AuthBinding(),
        );
      },
    );
  }
}
