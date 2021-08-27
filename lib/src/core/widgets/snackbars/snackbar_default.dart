import 'package:flutter/material.dart';
import 'package:get/get.dart';

void SnackbarDefault ({
  String text,
  String message,
  IconData icon,
  Color backgroundColor,
}) {
  Get.snackbar( //alterei a propriedade desse metodo snackbar que requeria um text e uma message
    //text,
    //message,
    /*titleText: Text (
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),*/
    messageText: Text (
      message,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorText: Colors.white,
    icon: Icon(
      icon,
      color: Colors.white,
      size: 30,
    ),
    shouldIconPulse: false,
    backgroundColor: backgroundColor,
    snackPosition: SnackPosition.BOTTOM,
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.fromLTRB(25, 17, 5, 17),
    borderRadius: 20,
    duration: Duration(seconds: 3),
  );
}
