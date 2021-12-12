import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const CustomField({Key? key, required this.controller, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 20)),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.cyan)),
          child: TextFormField(
            style: const TextStyle(fontSize: 16),
            showCursor: true,
            controller: controller,
          ),
        ),
      ],
    );
  }
}
