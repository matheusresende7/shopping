import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/src/core/constants/fonts.dart';
import 'package:shopping/src/core/styles/text_sizes.dart';

class TextFormFieldDefault extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final List<TextInputFormatter> inputFormatters;
  final Function (String) validator;
  final VoidCallback onTap;
  final Function (String) onSaved;
  final Function (String) onChanged;

  TextFormFieldDefault ({
    this.hintText,
    this.controller,
    this.inputFormatters,
    this.validator,
    this.onTap,
    this.onSaved,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: this.controller,
      onTap: this.onTap,
      onSaved: this.onSaved,
      onChanged: this.onChanged,
      keyboardType: TextInputType.text,
      inputFormatters: this.inputFormatters,
      textInputAction: TextInputAction.search,
      validator: this.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofocus: true,
      cursorColor: Theme.of(context).accentColor,
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: TextSizes.large,
        fontWeight: FontWeight.w500,
        fontFamily: Fonts.robotoSlab,
        letterSpacing: 1,
      ),
      decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(
            color: Colors.grey[300],
            fontSize: TextSizes.large,
            fontWeight: FontWeight.w300,
            fontFamily: Fonts.robotoSlab,
            letterSpacing: 1,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]),
          ),
      )
    );

  }
}