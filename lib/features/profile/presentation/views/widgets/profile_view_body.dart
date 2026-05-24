import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/log_out_button.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/profile_body_section.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: kPrimaryScreenPadding,
            child: Column(
              children: [
                ProfileHeader(),
                SizedBox(height: 8),
                ProfileBodySection(),
                SizedBox(height: 8),
              ],
            ),
          ),
          LogOutButton(),
          SizedBox(height: 33),
        ],
      ),
    );
  }
}
