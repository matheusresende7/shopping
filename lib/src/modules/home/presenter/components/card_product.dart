import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/src/core/constants/icons_data.dart';
import 'package:shopping/src/core/constants/images.dart';
import 'package:shopping/src/core/constants/strings.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';
import 'package:shopping/src/core/widgets/buttons/text_button_default.dart';
import 'package:shopping/src/core/widgets/snackbars/snackbar_default.dart';
import 'package:shopping/src/core/widgets/texts/text_default.dart';
import 'package:shopping/src/modules/home/presenter/controllers/home_controller.dart';
import 'package:transparent_image/transparent_image.dart';

class CardProduct extends StatelessWidget {

  final String text;

  CardProduct ({
    this.text,
  });

  final controller = HomeController();//fazer de outra forma sem instanciar isso

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Theme.of(context).accentColor,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [

                  Center(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: Images.blusaFeminina,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Align(
                    alignment: Alignment(-1, -1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Theme.of(context).errorColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                          child:
                          TextDefault(
                            text: '-' + 66.toString() + '%',
                            color: Theme.of(context).accentColor,
                            fontSize: TextSizes.medium,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(1, -1),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        child: Icon(
                          IconsData.favorite,
                          color: Colors.grey[400],
                          size: 28,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),

                ]
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  TextDefault(text: 'Gloves',),

                  Row(
                    children: [

                      Icon(
                        IconsData.rating,
                        color: Colors.yellow[600],
                        size: 23,
                      ),

                      SizedBox(width: 5,),

                      TextDefault(
                        text: 96.toString() + '/100',
                        color: Theme.of(context).hoverColor,
                        fontSize: TextSizes.small,
                        fontWeight: FontWeight.w300,
                      ),

                    ],
                  ),

                ],
              ),

              TextDefault(
                text: Strings.freteGratis.toUpperCase(),
                color: Theme.of(context).indicatorColor,
                fontSize: TextSizes.xSmall,
                fontWeight: FontWeight.w600,
              ),

              SizedBox(height: 10,),

              TextDefault(
                text: 'R\$ ' + 527.00.toStringAsFixed(2).replaceAll('.', ','),
                color: Theme.of(context).disabledColor,
                fontSize: TextSizes.xSmall,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.lineThrough,
              ),

              TextDefault(
                text: 'R\$ ' + 189.72.toStringAsFixed(2).replaceAll('.', ','),
                color: Theme.of(context).hoverColor,
                fontSize: TextSizes.large,
                fontWeight: FontWeight.w300,
              ),

              SizedBox(height: 20,),

              TextButtonDefault(
                text: Strings.comprar.toUpperCase(),
                onPressed: () {
                  controller.addProductInCart();
                  SnackbarDefault(
                    message: Strings.produtoAddComSucesso,
                    icon: IconsData.cart,
                    backgroundColor: Theme.of(context).indicatorColor,
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );

  }
}
