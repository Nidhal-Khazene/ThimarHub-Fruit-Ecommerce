import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/show_snack_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/ask_user_auth.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String name, emailAddress, password;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: "الاسم كامل",
                textInputType: TextInputType.name,
              ),
              const SizedBox(height: kSizedBoxHeight16),
              CustomTextFormField(
                onSaved: (value) {
                  emailAddress = value!;
                },
                hintText: "البريد الإلكتروني",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: kSizedBoxHeight16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(height: kSizedBoxHeight16),
              TermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(height: kSizedBoxHeight33),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<SignUpCubit>()
                          .createUserWithEmailAndPassword(
                            emailAddress: emailAddress,
                            password: password,
                            name: name,
                            isAdmin: false,
                          );
                    } else {
                      showSnackBar(
                        context,
                        "يجب عليك الموافقة على الأحكام و الشروط الخاصة بنا.",
                      );
                    }
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(height: 26),
              AskUserAuth(
                gestureRecognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pop();
                  },
                questionText: "تمتلك حساب بالفعل؟ ",
                doText: "تسجيل دخول",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
