import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  const CustomCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
        height: 40,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
