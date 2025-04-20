import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/colors.dart';
import 'package:qr_code/core/theme/dimens.dart';
import 'package:qr_code/core/theme/text_styles.dart';

class MyExpansionTile extends StatelessWidget {
  final bool isExpanded;
  final Function(bool) onExpansionChanged;
  final String title;
  final List<Widget> list;
  const MyExpansionTile(
      {required this.isExpanded,
      required this.onExpansionChanged,
      required this.title,
      required this.list,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: isExpanded ? Colors.indigo : Color(0xFF0C0035),
      shape: OutlineInputBorder(borderRadius: AppDimens.c8),
      onExpansionChanged: onExpansionChanged,
      trailing: Icon(
        isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: AppTextStyles.whiteText
      ),
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: list.map((value) => value).toList())
      ],
    );
  }
}
