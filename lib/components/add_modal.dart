// import 'dart:io';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kazakh/components/custom_filed.dart';

Future showAddingModal(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) => _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        // height: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomField(controller: TextEditingController(), label: 'Название'),
            const SizedBox(
              height: 20,
            ),
            CustomField(controller: TextEditingController(), label: 'Описание'),
          ],
        ),
      ),
    );
  }
}
