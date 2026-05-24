import 'package:ecommerce_app/core/helper/show_false_snack_bar.dart';
import 'package:ecommerce_app/core/helper/show_true_snack_bar.dart';
import 'package:ecommerce_app/features/checkout/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddOrderLoading,
          child: child,
        );
      },
      listener: (context, state) {
        if (state is AddOrderSuccess) {
          showTrueSnackBar(
            context,
            message: "لقد تم اضافة طلب الشراء بنجاح",
            secondsDuration: 2,
          );
        }
        if (state is AddOrderFailure) {
          showFalseSnackBar(
            context,
            errorMessage: "فشل اضافة طلب الشراء",
            secondsDuration: 2,
          );
        }
      },
    );
  }
}
