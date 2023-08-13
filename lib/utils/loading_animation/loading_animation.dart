import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void config(){
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 90
    ..radius = 10
    ..maskType = EasyLoadingMaskType.black
    ..progressColor = Colors.white
    ..backgroundColor = Colors.white
    ..indicatorColor = Colors.black
    ..textColor = Colors.black
    ..userInteractions = true
    ..dismissOnTap = false;

}