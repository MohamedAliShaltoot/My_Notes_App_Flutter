import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, required this.text, this.maxLines=1, this.onSaved});
  final String text;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty?? true){
          return "Field is required";
        } else{
          return null;
        }

      },
      cursorColor: kprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder( kprimaryColor),
        hintText:text,
        hintStyle: const TextStyle(color: kprimaryColor)
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