// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'notes_cubit.dart';

abstract class AddNotesState{}


class AddNotesInitial extends AddNotesState{}

class AddNotesLoading extends AddNotesState{}

class AddNotesSucess extends AddNotesState{}

class AddNotesFailure extends AddNotesState {
  final String errorMessage;
  AddNotesFailure({
    required this.errorMessage,
  });
}
