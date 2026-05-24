import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/add_new_payment_card_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfilePaymentsView extends StatelessWidget {
  const ProfilePaymentsView({super.key});

  static const routeName = "ProfilePaymentsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              const CustomAppBar(
                title: "المدفوعات",
                leadingIcon: Iconsax.edit_2_copy,
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF8F8FA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: ColorData.kBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '1234 **** ',
                            style: AppStyles.semiBold16.copyWith(
                              color: const Color(0xFF949D9E),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Image.asset(
                            Assets.assetsImagesPaymentsMastercard,
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF8F8FA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: ColorData.kBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '4887 **** ',
                            style: AppStyles.semiBold16.copyWith(
                              color: const Color(0xFF949D9E),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Image.asset(
                            Assets.assetsImagesPaymentsVisa,
                            color: Colors.indigo,
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 346),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AddNewPaymentCardView.routeName,
                        );
                      },
                      child: CustomButton(
                        content: Container(
                          decoration: ShapeDecoration(
                            color: ColorData.kPrimaryColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.add, color: Colors.white),
                              const SizedBox(width: 6.5),
                              Text(
                                'أضف وسيلة دفع جديده',
                                textAlign: TextAlign.center,
                                style: AppStyles.bold16.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
