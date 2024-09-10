import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 27, 237, 188),
        elevation: 30,
        onPressed: (){},
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
