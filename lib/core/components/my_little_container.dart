import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/dimens.dart';
import 'package:qr_code/core/theme/text_styles.dart';

class MyLittleContainer extends StatelessWidget {
  final String text;
  final int index;
  final int currentIndex;
  final void Function(int)? onTapped;
  const MyLittleContainer({
    required this.text,
    required this.index,
    this.currentIndex = 0,
    this.onTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppDimens.c8,
      child: InkWell(
        onTap: onTapped != null ? () => onTapped!(index) : null,
        child: Container(
          width: AppDimens.d80,
          height: AppDimens.d40,
          decoration: BoxDecoration(
              color:
              currentIndex == index ? Colors.indigo : Color(0xFF0C0035),
              borderRadius: AppDimens.c8
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.littleText
            ),
          ),
        ),
      ),
    );
  }
}