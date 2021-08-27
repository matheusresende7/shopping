import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shopping/src/core/constants/icons_data.dart';
import 'package:shopping/src/core/constants/strings.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';
import 'package:shopping/src/core/widgets/buttons/icon_button_default.dart';
import 'package:shopping/src/core/widgets/text_field/text_form_field_default.dart';
import 'package:shopping/src/core/widgets/texts/text_default.dart';
import 'package:shopping/src/modules/home/presenter/components/card_product.dart';
import 'package:shopping/src/modules/home/presenter/controllers/home_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {

          return Scaffold(

            backgroundColor: Theme.of(context).backgroundColor,

            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: _.searchActive
                  ? TextFormFieldDefault(
                hintText: Strings.procurar,
                controller: _.searchController,
                inputFormatters: [
                  FilteringTextInputFormatter.deny('   '),
                ],
              )
                  : TextDefault(
                text: Strings.shopping,
                color: Theme.of(context).accentColor,
                fontSize: TextSizes.xxLarge,
                fontWeight: FontWeight.w500,
              ),
              leading: IconButtonDefault(
                icon: IconsData.menu,
                onPressed: () {},
              ),
              actions: [

                IconButtonDefault(
                  icon: IconsData.search,
                  onPressed: () {_.searchProduct();},
                ),

                Stack(
                  children: [

                    IconButtonDefault(
                      icon: IconsData.cart,
                      onPressed: () {},
                    ),

                    Align(
                      alignment: Alignment(-1, 0.8),
                      child: Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Center(
                            child: TextDefault(
                              text: _.productsInCart.length.toString(),
                              color: Theme.of(context).primaryColor,
                              fontSize: TextSizes.small,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                      ),
                    ),

                  ],
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
    );

  }
}
