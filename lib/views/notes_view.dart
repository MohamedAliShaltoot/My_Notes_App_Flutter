import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 27, 237, 188),
        elevation: 30,
        onPressed: (){

showModalBottomSheet(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16)
  )
  ,context: context, builder: (context){
  return const AddNoteBottomSheet() ;
});


        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}


