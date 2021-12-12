import 'package:flutter/material.dart';
import 'package:kazakh/components/add_modal.dart';
import 'package:kazakh/hive/boxes.dart';
import 'package:kazakh/custom_card.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kazakh/hive/model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ThemeModelAdapter());
  await Hive.openBox('themeModel');
  runApp(const MaterialApp(home: Root()));
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          child: const Icon(Icons.add),
          onPressed: () async {
            showAddingModal(context);
            // final Box box = Boxes.getValue();
            // box.add(value)
          }),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) => CustomCard(
              title: index.toString(),
            ));
  }
}
