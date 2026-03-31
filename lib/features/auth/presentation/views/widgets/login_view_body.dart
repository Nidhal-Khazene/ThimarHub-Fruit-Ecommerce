import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/cubits/log_in_cubit/login_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/ask_user_auth.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_social_media_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../signup_view.dart';
import 'or_divider.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String emailAddress, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: keyForm,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ForgetPasswordView.routeName,
                      );
                    },
                    child: Text(
                      "نسيت كلمة المرور؟",
                      style: AppStyles.semiBold13.copyWith(
                        color: ColorData.kLightPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kSizedBoxHeight33),
              CustomButton(
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    keyForm.currentState!.save();
                    context.read<LoginCubit>().loginWithEmailAndPassword(
                      emailAddress,
                      password,
                    );
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: "تسجيل دخول",
              ),
              const SizedBox(height: kSizedBoxHeight33),
              AskUserAuth(
                gestureRecognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pushNamed(SignUpView.routeName);
                  },
                questionText: " لا تملك حساب?  ",
                doText: "قم بإنشاء حساب",
              ),
              const SizedBox(height: kSizedBoxHeight33),
              const OrDivider(),
              const SizedBox(height: kSizedBoxHeight16),
              CustomSocialMediaButton(
                onPressed: () {
                  context.read<LoginCubit>().loginWithGoogle();
                },
                title: "تسجيل بواسطة جوجل",
                socialIcon: Assets.assetsImagesGoogleIcon,
              ),
              const SizedBox(height: kSizedBoxHeight16),
              CustomSocialMediaButton(
                onPressed: () {},
                title: "تسجيل بواسطة أبل",
                socialIcon: Assets.assetsImagesAppleIcon,
              ),
              const SizedBox(height: kSizedBoxHeight16),
              CustomSocialMediaButton(
                onPressed: () {
                  context.read<LoginCubit>().loginWithFacebook();
                },
                title: "تسجيل بواسطة فيسبوك",
                socialIcon: Assets.assetsImagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
