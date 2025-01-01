import 'package:brewberry_cafe/common/discription_addtocart/icon_container/common_dis_icon.dart';
import 'package:brewberry_cafe/common/discription_addtocart/icon_container/icon_container.dart';
import 'package:brewberry_cafe/constants/colors.dart';
import 'package:brewberry_cafe/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DiscriptionPage extends StatelessWidget {
  const DiscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: KSizeScreen.getScreenHeight(context) * .6,
                child: Stack(
                  children: [
                    Image(
                      fit: BoxFit.cover,
                      height: KSizeScreen.getScreenHeight(context) * 4,
                      image: const AssetImage(
                        'assets/images/coffee_beans.jpeg',
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: ThemeContainer(
                        onPressed: () => Get.back(),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      right: 20,
                      child: ThemeContainer(
                        icon: Iconsax.heart5,
                        color: TColor.error,
                      ),
                    ),
                    Positioned(
                      bottom: -95,
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        width: KSizeScreen.getScreenWidth(context),
                        height: KSizeScreen.getScreenHeight(context) * .3,
                        decoration: BoxDecoration(
                          color: TColor.black.withOpacity(.78),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Robusta Beans',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    const Gap(3),
                                    Text(
                                      'From Africa',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const CommonDisIcon(),
                                const Gap(15),
                                const CommonDisIcon(
                                  hight: 54,
                                  showGap: true,
                                  width: 50,
                                  assetName: 'assets/svgs/milk.svg',
                                  lable: 'Milk',
                                ),
                              ],
                            ),
                            const Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: TColor.fixColor,
                                    ),
                                    Text(
                                      ' 4.5 ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    Text(
                                      ' (6789)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 125,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0XFF141921),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Medium Roasted',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const Gap(16 / 2),
                    Text(
                      'Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world’s coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed!',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Gap(16),
                    Text(
                      'Size',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const Gap(16 / 2),
                    Wrap(
                      spacing: 12,
                      children: [
                        ChoiceChip(
                          label: Text(
                            '250gm',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text(
                            '250gm',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                          selected: false,
                        ),
                        ChoiceChip(
                          label: Text(
                            '250gm',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                          selected: false,
                        ),
                      ],
                    ),
                    const Gap(26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Price',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Text(
                              '\$ 10.50',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 62,
                          width: 240,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Add to Cart')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
