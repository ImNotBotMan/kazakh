import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazakh/components/add_modal.dart';
import 'package:kazakh/custom_card.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kazakh/hive/model.dart';

import 'bloc/main_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ThemeModelAdapter());
  await Hive.openBox<ThemeModel>('themeModel');

  runApp(BlocProvider<MainBloc>(
    create: (context) => MainBloc()..add(InitEvent()),
    child: const MaterialApp(home: Root()),
  ));
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Список'),
          backgroundColor: Colors.cyan,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyan,
            child: const Icon(Icons.add),
            onPressed: () async {
              showAddingModal(context);
            }),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        if (state is LoadedData) {
          if (state.data.isEmpty) {
            return const Center(
              child: Text('Список Пуст'),
            );
          } else {
            return ListView.separated(
                padding: const EdgeInsets.all(20),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                shrinkWrap: true,
                itemCount: state.data.length,
                itemBuilder: (context, index) => CustomCard(
                      model: state.data[index],
                    ));
          }
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
