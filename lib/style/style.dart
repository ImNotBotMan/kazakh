import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle black16() =>
      const TextStyle(fontSize: 16, color: Colors.black);
  static TextStyle white16() =>
      const TextStyle(fontSize: 16, color: Colors.white);
  static TextStyle black20() =>
      const TextStyle(fontSize: 20, color: Colors.black);
  static TextStyle black20Bold() => const TextStyle(
      fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
}
