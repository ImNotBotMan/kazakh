part of '../main_bloc.dart';

extension Init on MainBloc {
  Future<void> _init(
    event,
    Emitter<MainState> emit,
  ) async {
    try {
      box = Boxes.getValue();
      data = box.values.toList();
      emit(LoadedData(data));
    } catch (e) {}
  }
}
