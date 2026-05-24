import 'package:ecommerce_app/core/services/service_locator.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/cubits/log_in_cubit/login_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/bloc_consumer_login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = "/LoginView";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBarWithBackArrow(context, title: "تسجيل دخول"),
        body: const BlocConsumerLoginViewBody(),
      ),
    );
  }
}
