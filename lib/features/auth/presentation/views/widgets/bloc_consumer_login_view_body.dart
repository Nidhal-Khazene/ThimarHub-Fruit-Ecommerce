import 'package:ecommerce_app/core/helper/show_true_snack_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/cubits/log_in_cubit/login_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../core/helper/show_false_snack_bar.dart';

class BlocConsumerLoginViewBody extends StatelessWidget {
  const BlocConsumerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          showFalseSnackBar(context, errorMessage: state.errorMessage);
        }
        if (state is LoginSuccess) {
          showTrueSnackBar(context, message: "لقد قمت بتسجيل الدخول");
          Navigator.of(context).pushNamed(CustomBottomNavigationBar.routeName);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          progressIndicator: const CustomLoadingIndicator(),
          inAsyncCall: state is LoginLoading ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
