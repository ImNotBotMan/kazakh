import 'package:flutter/material.dart';
import 'package:kazakh/hive/model.dart';
import 'package:kazakh/style/style.dart';

class DetailsScreen extends StatelessWidget {
  final ThemeModel model;
  const DetailsScreen({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Детальный просмотр'),
      ),
      body: _Body(model: model),
    ));
  }
}

class _Body extends StatelessWidget {
  final ThemeModel model;

  const _Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: model.translate != null ? 2 : 1,
      itemBuilder: (BuildContext context, int index) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    model.title,
                    style: AppTextStyle.black20Bold(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  index == 1 ? model.translate ?? 'no' : model.text,
                  style: AppTextStyle.black16(),
                )
              ],
            ),
          ),
        );
      },
      // child:
    );
  }
}
