import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

sealed class AppTextStyles {
  static TextStyle generated =
      TextStyle(fontSize: 14, color: AppColors.grey600);

  static TextStyle enter = TextStyle(
    fontSize: AppDimens.d24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle flowCode = TextStyle(
    fontSize: AppDimens.d20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle whiteText = TextStyle(
    color: Colors.white,
  );

  static TextStyle littleText = TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
}
