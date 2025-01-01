import 'package:brewberry_cafe/constants/colors.dart';
import 'package:flutter/material.dart';

class ThemeContainer extends StatelessWidget {
  const ThemeContainer({
    super.key,
    this.hight = 35,
    this.icon = Icons.arrow_back_ios_new,
    this.width = 35,
    this.color = TColor.grey,
    this.onPressed,
  });

  final double? hight;
  final IconData? icon;
  final double? width;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: hight,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              TColor.gradiant,
              TColor.black,
            ],
          ),
        ),
        child: Icon(
          size: 16,
          color: color,
          icon,
        ),
      ),
    );
  }
}
