import 'package:flutter/material.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';
import 'package:shopping/src/core/widgets/text_default.dart';
import 'package:shopping/src/modules/home/presenter/components/card_product.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: TextDefault(
          text: 'Shopping',
          color: Theme.of(context).accentColor,
          fontSize: TextSizes.xxLarge,
          fontWeight: FontWeight.w600,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).accentColor,
            size: 28,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).accentColor,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, snapshot) {

            return CardProduct();

          }
      ),

    );

  }
}
