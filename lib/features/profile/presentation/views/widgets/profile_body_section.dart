import 'package:ecommerce_app/core/models/list_tile_model.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/toggle_container_switch.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/about_us_view.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/favourites_view.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/my_orders_view.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/personal_profile_view.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/profile_payments_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileBodySection extends StatelessWidget {
  const ProfileBodySection({super.key});

  static final List<ListTileModel> listTileItems = [
    ListTileModel(
      title: "الملف الشخصي",
      leading: Icon(
        Iconsax.user_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "طلباتي",
      leading: Icon(
        Iconsax.box_1_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "المدفوعات",
      leading: Icon(
        Iconsax.empty_wallet_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "المفضلة",
      leading: Icon(
        Iconsax.heart_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 20),
    ),
    ListTileModel(
      title: "الاشعارات",
      leading: Icon(
        Iconsax.notification_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: const ToggleContainerSwitch(
        inactiveCircleColor: Colors.white,
        inactiveBackgroundColor: Color(0x7F888FA0),
        inactiveBorderColor: Colors.transparent,
      ),
    ),
    ListTileModel(
      title: "اللغة",
      leading: Icon(
        Iconsax.global_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'العربية',
            style: AppStyles.regular13.copyWith(color: const Color(0xFF0C0D0D)),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    ),
    ListTileModel(
      title: "الوضع",
      leading: Icon(
        Iconsax.magicpen_copy,
        size: 20,
        color: ColorData.kPrimaryColor,
      ),
      trailing: const ToggleContainerSwitch(
        inactiveCircleColor: Colors.white,
        inactiveBackgroundColor: Color(0x7F888FA0),
        inactiveBorderColor: Colors.transparent,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'عام',
          style: AppStyles.semiBold13.copyWith(color: const Color(0xFF0C0D0D)),
        ),
        const SizedBox(height: 16),
        Column(
          children: List.generate(listTileItems.length, (index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.pushNamed(context, PersonalProfileView.routeName);
                } else if (index == 1) {
                  Navigator.pushNamed(context, MyOrdersView.routeName);
                } else if (index == 2) {
                  Navigator.pushNamed(context, ProfilePaymentsView.routeName);
                } else if (index == 3) {
                  Navigator.pushNamed(context, FavouritesView.routeName);
                }
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  listTileItems[index].title,
                  style: AppStyles.bold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                leading: listTileItems[index].leading,
                trailing: listTileItems[index].trailing,
              ),
            );
          }),
        ),
        const SizedBox(height: 16),
        Text(
          'المساعده',
          style: AppStyles.semiBold13.copyWith(color: const Color(0xFF0C0D0D)),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AboutUsView.routeName);
          },
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'من نحن',
              style: AppStyles.semiBold13.copyWith(
                color: const Color(0xFF949D9E),
              ),
            ),
            leading: Icon(
              Iconsax.info_circle_copy,
              color: ColorData.kPrimaryColor,
              size: 20,
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 20),
          ),
        ),
      ],
    );
  }
}
