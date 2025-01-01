import 'package:brewberry_cafe/common/discription_addtocart/dis_addcart_screen.dart';
import 'package:brewberry_cafe/common/vartical_card/vartical_coffecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  separatorBuilder: (_, __) {
                    return const Gap(20);
                  },
                  itemBuilder: (_, int index) {
                    return const VerticalCoffeeCard(
                      imgString: 'assets/images/Cappuccino_img.jpeg',
                      star: '4.5',
                      title: 'Cappuccino',
                      subTilte: 'With Steamed Milk ',
                      price: '4.20',
                    );
                  },
                ),
              ),
              const Gap(16),
              Text(
                'Coffee beans',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(12),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (_, __) {
                    return const Gap(20);
                  },
                  itemBuilder: (_, int index) {
                    return VerticalCoffeeCard(
                      imgString: 'assets/images/coffee_beans.jpeg',
                      showStar: false,
                      title: 'Robusta Beans',
                      subTilte: 'Medium Roasted',
                      price: '4.2',
                      onTap: () => Get.to(() => const DiscriptionPage()),
                    );
                  },
                ),
              ),
              const Gap(12),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (_, __) {
                    return const Gap(20);
                  },
                  itemBuilder: (_, int index) {
                    return VerticalCoffeeCard(
                      imgString: 'assets/images/coffee_beans.jpeg',
                      showStar: false,
                      title: 'Robusta Beans',
                      subTilte: 'Medium Roasted',
                      price: '4.2',
                      onTap: () => Get.to(() => const DiscriptionPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
