import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder( KprimaryColor),
        hintText:"Title",
        hintStyle: const TextStyle(color: KprimaryColor)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
borderRadius: BorderRadius.circular(16),
borderSide:   BorderSide( color:color ?? Colors.white)
      );
  }
}