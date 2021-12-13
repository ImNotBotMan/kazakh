import 'package:flutter/material.dart';
import 'package:kazakh/bloc/main_bloc.dart';
import 'package:kazakh/hive/model.dart';
import 'package:kazakh/style/style.dart';
import 'package:provider/src/provider.dart';

class CustomCard extends StatelessWidget {
  final ThemeModel model;
  const CustomCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Text(
                model.title,
                textAlign: TextAlign.center,
                style: AppTextStyle.white16(),
              ),
            ),
            IconButton(
                onPressed: () {
                  context.read<MainBloc>().add(DeleteTheme(model));
                },
                icon: const Icon(Icons.delete, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
