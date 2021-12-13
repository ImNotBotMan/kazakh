part of '../main_bloc.dart';

extension Adding on MainBloc {
  Future<void> _adding(
    event,
    Emitter<MainState> emit,
  ) async {
    try {
      ThemeModel model = ThemeModel()
        ..text = event.text
        ..title = event.title;
      box.add(model);
      data.add(model);
      emit(LoadedData(data));
    } catch (e) {}
  }
}
