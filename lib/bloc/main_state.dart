part of 'main_bloc.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}

class LoadedData extends MainState {
  final List<ThemeModel> data;

  LoadedData(this.data);
}
