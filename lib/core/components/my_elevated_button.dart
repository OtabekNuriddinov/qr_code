import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/colors.dart';
import 'package:qr_code/core/theme/dimens.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.play_arrow, size: 18),
      label: const Text("Watch Our Demo"),
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.indigo50,
          foregroundColor: AppColors.indigo,
          padding: AppDimens.ph16v12,
          shape: RoundedRectangleBorder(
              borderRadius: AppDimens.c8
          ),
          minimumSize: const Size(double.infinity, 46),
      ),
    );
  }
}