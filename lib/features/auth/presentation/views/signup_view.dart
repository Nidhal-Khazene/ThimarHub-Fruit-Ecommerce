import 'package:ecommerce_app/core/services/service_locator.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/bloc_consumer_sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_bar_with_back_arrow.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String routeName = "signUpView";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpCubit>(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBarWithBackArrow(context, title: 'حساب جديد'),
        body: const BlocConsumerSignUpViewBody(),
      ),
    );
  }
}
