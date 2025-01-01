import 'package:brewberry_cafe/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar(
      {super.key,
      this.leading = true,
      this.icon,
      this.onPress,
      this.isLeadingShow = false,
      this.title,
      this.action});

  final bool leading;
  final Widget? icon;
  final void Function()? onPress;
  final bool isLeadingShow;
  final Widget? title;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: leading
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? TColor.white : TColor.black,
                ),
              )
            : isLeadingShow
                ? icon
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40.0);
}
