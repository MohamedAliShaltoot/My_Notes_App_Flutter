import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.text, this.maxLines=1});
  final String text;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: KprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder( KprimaryColor),
        hintText:text,
        hintStyle: const TextStyle(color: KprimaryColor)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide:   BorderSide( color:color ?? Colors.white)
      );
  }
}