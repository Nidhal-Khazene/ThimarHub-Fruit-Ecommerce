import 'package:flutter/cupertino.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavBarEntity {
  final IconData? activeIcon, inActiveIcon;
  final String? iconTitle;

  BottomNavBarEntity({this.activeIcon, this.inActiveIcon, this.iconTitle});

  List<BottomNavBarEntity> get getBottomNavBarEntityList => [
    BottomNavBarEntity(
      activeIcon: Iconsax.home,
      inActiveIcon: Iconsax.home_copy,
      iconTitle: "الرئيسية",
    ),
    BottomNavBarEntity(
      activeIcon: Iconsax.element_3,
      inActiveIcon: Iconsax.element_3_copy,
      iconTitle: "المنتجات",
    ),
    BottomNavBarEntity(
      activeIcon: Iconsax.shopping_cart,
      inActiveIcon: Iconsax.shopping_cart_copy,
      iconTitle: "سلة التسوق",
    ),
    BottomNavBarEntity(
      activeIcon: Iconsax.user,
      inActiveIcon: Iconsax.user_copy,
      iconTitle: "حسابي",
    ),
  ];
}
