import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          const CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(height: 50,),
          CustomTextField(text: "title"),
   const SizedBox(height: 16,),
          CustomTextField(text: "content",maxLines: 5,),

        ],
      ),
    );
  }
}