import 'package:brewberry_cafe/common/custom_appbar/ktabbar.dart';
import 'package:brewberry_cafe/constants/colors.dart';
import 'package:brewberry_cafe/shop/screens/home/screen/all_page.dart';
import 'package:brewberry_cafe/shop/screens/home/screen/americano_page.dart';
import 'package:brewberry_cafe/shop/screens/home/screen/cappuccino_page.dart';
import 'package:brewberry_cafe/shop/screens/home/screen/cubanEspresso_page.dart';
import 'package:brewberry_cafe/shop/screens/home/screen/latte_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (_, isScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: false,
                  floating: true,
                  automaticallyImplyLeading: false,
                  expandedHeight: 250,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                  colors: [
                                    TColor.darkerGrey,
                                    TColor.black,
                                  ],
                                ),
                              ),
                              child: SvgPicture.asset(
                                'assets/svgs/home_top.svg',
                                colorFilter: const ColorFilter.mode(
                                  TColor.darkGrey,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/images/user_img.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(16),
                            Text(
                              'Find the best\ncoffee for you',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const Gap(16),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    TColor.gradiant,
                                    TColor.black,
                                  ],
                                ),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  hintText: 'Find Your Coffee...',
                                  prefixIcon: Icon(Iconsax.search_normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: const Column(
              children: [
                KTabBar(
                  labelPadding: EdgeInsets.all(12),
                  tabList: [
                    Text('All'),
                    Text('Americano'),
                    Text('Cappuccino'),
                    Text('Latte'),
                    Text('Cuban Espresso'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      AllPage(),
                      AmericanoPage(),
                      CappuccinoPage(),
                      LattePage(),
                      CubanEspressopage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
