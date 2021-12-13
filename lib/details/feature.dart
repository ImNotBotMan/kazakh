import 'package:flutter/material.dart';
import 'package:kazakh/details/src/details_screen.dart';
import 'package:kazakh/hive/model.dart';

MaterialPageRoute detailsScreenRoute(ThemeModel model) {
  return MaterialPageRoute(
      builder: (context) => DetailsScreen(
            model: model,
          ));
}
