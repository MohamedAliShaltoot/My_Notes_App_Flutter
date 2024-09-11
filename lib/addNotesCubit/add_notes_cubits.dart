

//part 'add_notes_state.dart';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/addNotesCubit/add_notes_state.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async{
    emit(AddNotesLoading());

    try {
  var notesBox = Hive.box(knotesBox);
  emit(AddNotesSucess());
     await notesBox.add(note);
} on Exception catch (e) {
  AddNotesFailure(errorMessage: e.toString());
}

  }

} 
  


