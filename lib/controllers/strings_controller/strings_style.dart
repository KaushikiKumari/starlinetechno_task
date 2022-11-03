import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starlinetechno_task/controllers/theme_controller/theme_controller.dart';

class StringStyles {
  final color = Get.put(ThemeControllerForAll());
  StringStyles._();

  static final TextStyle hometitleTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    // color: color.textColor,
  );
  static final TextStyle reviewTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    //color: color.textColor,
  );
}
