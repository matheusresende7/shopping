import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import 'app_themes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme,
      //initialBinding: AppBinding(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
