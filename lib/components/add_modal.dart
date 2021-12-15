import 'package:flutter/material.dart';
import 'package:kazakh/bloc/main_bloc.dart';
import 'package:kazakh/components/custom_filed.dart';
import 'package:kazakh/components/main_button.dart';
import 'package:kazakh/style/style.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

Future showAddingModal(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) => const _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController textController = TextEditingController();
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Добавить новую вкладку',
              style: AppTextStyle.black20Bold(),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomField(controller: titleController, label: 'Название'),
            const SizedBox(
              height: 20,
            ),
            CustomField(controller: textController, label: 'Описание'),
            const SizedBox(
              height: 20,
            ),
            MainButton(
                label: 'Добавить',
                onTap: () {
                  context.read<MainBloc>().add(AddNewTheme(
                      text: textController.text, title: titleController.text));
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
