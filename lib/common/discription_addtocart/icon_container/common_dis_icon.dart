import 'package:brewberry_cafe/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CommonDisIcon extends StatelessWidget {
  const CommonDisIcon({
    super.key,
    this.assetName = 'assets/svgs/coffee_beans_double.svg',
    this.lable = 'Coffee',
    this.hight,
    this.width,
    this.showGap = false,
  });

  final String? assetName;
  final String? lable;
  final double? hight;
  final double? width;
  final bool? showGap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0XFF141921),
      ),
      child: Column(
        children: [
          if (showGap!) const Gap(5),
          SvgPicture.asset(
            assetName!,
            colorFilter: const ColorFilter.mode(
              TColor.fixColor,
              BlendMode.srcIn,
            ),
          ),
          if (showGap!) const Gap(3),
          Text(
            lable!,
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      ),
    );
  }
}
