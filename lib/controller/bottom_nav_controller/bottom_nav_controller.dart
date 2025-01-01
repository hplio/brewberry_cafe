import 'package:brewberry_cafe/shop/screens/Favourites/favouritepage.dart';
import 'package:brewberry_cafe/shop/screens/cart/cart_screen.dart';
import 'package:brewberry_cafe/shop/screens/history/histoty_page.dart';
import 'package:brewberry_cafe/shop/screens/home/home_page.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  static BottomNavController get instance => Get.find();

  Rx<int> curruntPage = 0.obs;
  final isSelectedColor = true.obs;
  final container = [
    const HomePage(),
    const CartPage(),
    const FavouritesPage(),
    const HistoryPage(),
  ];

}
