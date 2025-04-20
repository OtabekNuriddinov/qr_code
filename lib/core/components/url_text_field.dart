import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/colors.dart';
import 'package:qr_code/core/theme/dimens.dart';

class UrlTextField extends StatelessWidget {
  final void Function(String) onTapped;
  final TextEditingController urlController;
  const UrlTextField({required this.onTapped, required this.urlController, super.key,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: urlController,
      onChanged: (value)=>onTapped(value),
      decoration: InputDecoration(
          hintText: 'https://example.com',
          border: OutlineInputBorder(
            borderRadius: AppDimens.c8
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: AppColors.indigo, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey600),
          ),
          prefixIcon: const Icon(Icons.link)),
    );
  }
}