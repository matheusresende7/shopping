import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {



  //**************************SEARCH PRODUCTS***********************************
  TextEditingController searchController = TextEditingController();
  bool searchActive = false;

  void searchProduct () {
    searchActive = !searchActive;
    update();
  }



  //*******************************CART*****************************************
  List productsInCart = [];

  void addProductInCart () {
    productsInCart.add('123');
    update();
  }



}