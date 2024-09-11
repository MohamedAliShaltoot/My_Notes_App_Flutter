import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AddNoteForm()
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                onSaved: (value){
title=value;
                },
                text: "title",
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  onSaved: (value){
subTitle=value;
                },
                text: "Content",
                maxLines: 5,
              ),
              const SizedBox(
                height: 30,
              ),
               CustomBotton(
                onTap: (){
if(formKey.currentState!.validate()){
  formKey.currentState!.save();
}else{
  autovalidateMode=AutovalidateMode.always;
  setState(() {
    
  });
}
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
    );
  }
}