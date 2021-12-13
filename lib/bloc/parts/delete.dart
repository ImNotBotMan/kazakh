part of '../main_bloc.dart';

extension Deleting on MainBloc {
  Future<void> _delete(
    event,
    Emitter<MainState> emit,
  ) async {
    try {
      box.delete(event.model.key);
      data.remove(event.model);
      emit(LoadedData(data));
    } catch (e) {}
  }
}
