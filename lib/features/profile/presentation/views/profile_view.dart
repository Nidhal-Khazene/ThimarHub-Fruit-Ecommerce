import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "حسابي",
        isNotificationIconShow: false,
      ),
      body: const SafeArea(child: ProfileViewBody()),
    );
  }
}
