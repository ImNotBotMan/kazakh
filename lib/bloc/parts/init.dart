part of '../main_bloc.dart';

extension Init on MainBloc {
  Future<void> _init(
    event,
    Emitter<MainState> emit,
  ) async {
    try {
      data.addAll(initialData);
      box = Boxes.getValue();
      data.addAll(box.values.toList());
      emit(LoadedData(data));
    } catch (e) {}
  }
}
