import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/colors.dart';
import 'package:qr_code/core/theme/dimens.dart';
import '../../models/nav_item.dart';

class Destinations extends StatelessWidget {
  const Destinations({
    super.key,
    required List<NavItem> navItems,
    required this.currentIndex,
    required this.index
  }) : _navItems = navItems;

  final List<NavItem> _navItems;
  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDimens.mH12V4,
      padding: AppDimens.pAll12,
      decoration: BoxDecoration(
          borderRadius: AppDimens.c8
      ),
      child: Row(
        children: [
          Icon(
            _navItems[index].icon,
            color: currentIndex == index
                ? AppColors.indigo
                : AppColors.grey600,
            size: AppDimens.d22,
          ),
          AppDimens.h16,
          Text(
            _navItems[index].label,
            style: TextStyle(
                color: currentIndex == index
                    ? AppColors.indigo
                    : AppColors.grey700,
                fontSize: AppDimens.d14,
            ),
          )
        ],
      ),
    );
  }
}