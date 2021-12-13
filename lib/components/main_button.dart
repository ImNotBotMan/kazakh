import 'package:flutter/material.dart';
import 'package:kazakh/style/style.dart';

class MainButton extends StatelessWidget {
  final String label;
  final void Function() onTap;
  const MainButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan,
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: AppTextStyle.black16(),
        ),
      ),
    );
  }
}
