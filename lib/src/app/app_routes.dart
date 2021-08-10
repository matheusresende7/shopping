import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppRoutes {

  static const String initialRoute = '/';

  static List<GetPage> routes = [

    /*getPageRightToLeft(
      name: '/',
      page: () => Home(),
    ),

    getPageDownToUp(
      name: '/Settings',
      page: () => Settings(),
    ),*/

    /*GetPage(
      name: SignupPage.ROUTE_NAME,
      page: () => SignupPage(),
      binding: SignupBinding(),
    ),*/

  ];

}



GetPage getPageRightToLeft ({
  String name,
  Widget Function() page,
}) {
  return GetPage(
    name: name,
    page: page,
    transition: Transition.rightToLeft,
    transitionDuration: Duration(milliseconds: 700),
  );
}

GetPage getPageDownToUp ({
  String name,
  Widget Function() page,
}) {
  return GetPage(
    name: name,
    page: page,
    transition: Transition.downToUp,
    transitionDuration: Duration(milliseconds: 700),
  );
}