import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/dimens.dart';

class Colored extends StatelessWidget {
  final Color color;
  const Colored({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.d30,
      height: AppDimens.d30,
      decoration: BoxDecoration(
          color: color,
          borderRadius: AppDimens.c8
      ),
    );
  }
}
