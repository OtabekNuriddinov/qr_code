import 'package:flutter/material.dart';

sealed class AppDimens{

  static const d14 = 14.0;
  static const d20 = 20.0;
  static const d22 = 22.0;
  static const d24 = 24.0;
  static const d30 = 30.0;
  static const d40 = 40.0;
  static const d80 = 80.0;
  static const d200 = 200.0;
  static const d220 = 220.0;

  static const SizedBox h12 = SizedBox(height: 12);
  static const SizedBox h16 = SizedBox(height: 16);
  static const SizedBox h20 = SizedBox(height: 20);
  static const SizedBox h30 = SizedBox(height: 30);

  static const EdgeInsets ph100 = EdgeInsets.symmetric(horizontal: 100);
  static const EdgeInsets phv20 = EdgeInsets.symmetric(horizontal: 16, vertical: 20);
  static const EdgeInsets ph16v12 = EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const EdgeInsets ph10 = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets pAll20 = EdgeInsets.all(20.0);
  static const EdgeInsets pAll12 = EdgeInsets.all(12.0);

  static const EdgeInsets mH12V4 = EdgeInsets.symmetric(horizontal: 12, vertical: 4);

  static BorderRadius c8 = BorderRadius.circular(8);
}