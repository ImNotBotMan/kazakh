import 'package:hive/hive.dart';

import 'model.dart';

class Boxes {
  static Box<ThemeModel> getValue() => Hive.box('themeModel');
}
