import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32,),
        CustomTextField(text: "title",),
        const SizedBox(height: 16,),
         CustomTextField(text: "Content",maxLines:5 ,),
          const SizedBox(height: 30,),
         const CustomBotton(),
         const SizedBox(height: 30,),
        
          ],
        ),
      ),
    );
  }
}
