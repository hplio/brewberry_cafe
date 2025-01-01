import 'package:brewberry_cafe/constants/colors.dart';
import 'package:flutter/material.dart';

class KTabBar extends StatelessWidget implements PreferredSizeWidget {
  const KTabBar(
      {super.key, required this.tabList, this.labelPadding, this.padding});

  final List<Widget> tabList;
  final EdgeInsetsGeometry? labelPadding;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    return Material(
      color: dark ? Colors.black : TColor.white,
      // color: dark ? TColor.dark : TColor.white,
      child: SafeArea(
        child: TabBar(
          tabs: tabList,
          labelPadding: labelPadding,
          padding: padding,
          isScrollable: true,
          indicatorColor: TColor.fixColor,
          labelColor: TColor.fixColor,
          unselectedLabelColor: TColor.tebTextColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
