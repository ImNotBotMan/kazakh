import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 0)
class ThemeModel extends HiveObject {
  @HiveField(0)
  late final String title;
  @HiveField(1)
  late final String text;
  @HiveField(3)
  final String? translate;

  ThemeModel({this.translate});
}
