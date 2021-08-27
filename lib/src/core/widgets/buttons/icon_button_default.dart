import 'package:flutter/material.dart';

class IconButtonDefault extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;

  IconButtonDefault ({
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return IconButton(
      icon: Icon(
        this.icon,
        color: Theme.of(context).accentColor,
        size: 28,
      ),
      onPressed: this.onPressed ?? () {},
    );

  }
}
