import 'package:flutter/material.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';
import 'package:shopping/src/core/widgets/texts/text_default.dart';

class TextButtonDefault extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  TextButtonDefault ({
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      child: TextButton(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextDefault(
              text: this.text ?? '',
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
        onPressed: this.onPressed ?? () {},
      ),
    );

  }
}
