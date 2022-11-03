import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeControllerForAll extends GetxController {
  var cardsgradientColor = LinearGradient(
      colors: [Colors.white38, Colors.white],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  var titlecardsgradientColor = LinearGradient(
      colors: [Colors.orangeAccent, Colors.red],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  var appbarColor = Colors.blueGrey[300];
  var backgroundColor = Colors.blueGrey[50];
  var bottomColor = Colors.deepPurpleAccent[400];
  var cardColor = Colors.grey[500];
  var textColor = Colors.black;
  var isDark = false;
// here we can change them also by using update method

  void changeTheme(state) {
    if (state == true) {
      cardsgradientColor = LinearGradient(
          colors: [Colors.white24, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight);

      appbarColor = Colors.black45;
      backgroundColor = Colors.black12;
      titlecardsgradientColor = LinearGradient(
          colors: [Colors.orangeAccent, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight);
      bottomColor:
      Colors.white;
      cardColor = Colors.grey[600];
      isDark = true;
      textColor = Colors.white;

      Get.changeTheme(ThemeData.dark());
      update();
    } else {
      cardsgradientColor = LinearGradient(
          colors: [Colors.white38, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight);
      titlecardsgradientColor = LinearGradient(
          colors: [Colors.orangeAccent, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight);
      appbarColor = Colors.blueGrey[300];

      bottomColor:
      Colors.deepPurpleAccent[400];
      cardColor = Colors.grey[500];
      isDark = false;
      textColor = Colors.black;
      backgroundColor = Colors.blueGrey[50];
      Get.changeTheme(ThemeData.light());
      update();
    }
  }
}
