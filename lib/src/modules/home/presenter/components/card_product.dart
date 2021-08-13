import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';
import 'package:shopping/src/core/widgets/text_default.dart';
import 'package:transparent_image/transparent_image.dart';

class CardProduct extends StatelessWidget {

  final String text;
  final IconData icon;

  CardProduct ({
    this.text,
    this.icon,
  });

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
                      //image: 'https://cf.shopee.com.br/file/48d484e9a80aa215b1fdf3f3ac215715_tn',
                      image: 'https://static.netshoes.com.br/produtos/tenis-nike-revolution-5-feminino/26/HZM-1729-026/HZM-1729-026_zoom1.jpg?ts=1569489067&ims=544x',
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
                          color: Theme.of(context).indicatorColor,
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
                          Icons.favorite_border,
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
                        Icons.star,
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
                text: 'Frete grátis'.toUpperCase(),
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

              Container(
                height: 50,
                child: TextButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextDefault(
                        text: 'COMPRAR',
                        color: Theme.of(context).accentColor,
                        fontSize: TextSizes.large,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}
