import 'package:brewberry_cafe/constants/colors.dart';
import 'package:brewberry_cafe/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final controller = Get.put(BottomNavController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor:
              dark ? TColor.black : TColor.light.withOpacity(.2),
          indicatorColor: Colors.transparent,
          elevation: 0,
          height: 65,
          labelBehavior:
              NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: controller.curruntPage.value,
          onDestinationSelected: (value) {
            controller.curruntPage.value = value;
          },
          destinations: [
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                'assets/svgs/home.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.fixColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                'assets/svgs/home.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                'assets/svgs/shop.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.fixColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                'assets/svgs/shop.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Cart',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                'assets/svgs/heart.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.fixColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                'assets/svgs/heart.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Favorites',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                'assets/svgs/bell.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.fixColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                'assets/svgs/bell.svg',
                colorFilter: const ColorFilter.mode(
                  TColor.darkGrey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'History',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.container[controller.curruntPage.value]),
    );
  }
}
