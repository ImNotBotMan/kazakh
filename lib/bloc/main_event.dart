part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class InitEvent extends MainEvent {}

class AddNewTheme extends MainEvent {
  final String title;
  final String text;

  AddNewTheme({required this.title, required this.text});
}

class DeleteTheme extends MainEvent {
  final ThemeModel model;

  DeleteTheme(this.model);
}
