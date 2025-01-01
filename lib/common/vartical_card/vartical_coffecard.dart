import 'package:brewberry_cafe/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerticalCoffeeCard extends StatelessWidget {
  const VerticalCoffeeCard({
    super.key,
    required this.imgString,
    this.star = '4.5',
    required this.title,
    required this.subTilte,
    required this.price,
    this.showStar = true,
    this.onTap,
  });
  final String imgString;
  final String? star;
  final String title;
  final String subTilte;
  final String price;
  final bool? showStar;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              TColor.gradiant,
              TColor.black,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Stack(
                children: [
                  Image(
                    height: 150,
                    fit: BoxFit.cover,
                    width: 150,
                    image: AssetImage(
                      imgString,
                      // 'assets/images/Cappuccino_img.jpeg',
                    ),
                  ),
                  if (showStar!)
                    Positioned(
                      right: .2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.6),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              const Icon(
                                size: 15,
                                Icons.star,
                                color: TColor.fixColor,
                              ),
                              const Gap(2),
                              Text(
                                star??'',
                                // '4.5',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Gap(12),
            Text(
              title,
              // 'Cappuccino',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Gap(8),
            Text(
              subTilte,
              // 'With Steamed Milk',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Gap(12),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text.rich(
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$ ',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: TColor.fixColor,
                                ),
                      ),
                      TextSpan(
                        text: price,
                        // text: '4.20',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
                const Gap(60),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: TColor.fixColor,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
