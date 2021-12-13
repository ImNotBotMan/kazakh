import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:kazakh/hive/boxes.dart';
import 'package:kazakh/hive/model.dart';
import 'package:meta/meta.dart';

import 'package:stream_transform/stream_transform.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'parts/init.dart';
part 'parts/adding.dart';
part 'parts/delete.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  List<ThemeModel> data = [];
  late Box<ThemeModel> box;

  EventTransformer<E> _restartableDebounce<E>() {
    return (events, mapper) =>
        events.debounce(const Duration(milliseconds: 500)).switchMap(mapper);
  }

  MainBloc() : super(MainInitial()) {
    on<InitEvent>(_init, transformer: _restartableDebounce());
    on<AddNewTheme>(_adding, transformer: _restartableDebounce());
    on<DeleteTheme>(_delete, transformer: _restartableDebounce());
  }
  @override
  void onTransition(Transition<MainEvent, MainState> transition) {
    super.onTransition(transition);
  }
}
