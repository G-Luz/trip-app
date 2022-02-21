import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/login/controller/login_controller.dart';
import 'package:trip_app/app/modules/signup/controller/signup_controller.dart';
import 'package:trip_app/app/routes.dart';
import 'package:trip_app/app/widgets/app_logo.dart';
import 'package:trip_app/app/widgets/app_text.dart';
import 'package:trip_app/app/widgets/app_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AppLogo(),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 10),
                child: Column(
                  children: [
                    Observer(builder: (_) {
                      return AppTextField(
                        controller: controller.emailController,
                        textInputType: TextInputType.emailAddress,
                        hintText: "type_your_email".tr(),
                        hintFontColor: Colors.grey.withOpacity(0.7),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        suffixIcon: Container(width: 0),
                      );
                    }),
                    const SizedBox(height: 10),
                    AppTextField(
                      controller: TextEditingController(),
                      hintText: "type_your_name".tr(),
                      hintFontColor: Colors.grey.withOpacity(0.7),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      suffixIcon: Container(width: 0),
                    ),
                    const SizedBox(height: 10),
                    Observer(builder: (context) {
                      return AppTextField(
                        controller: TextEditingController(),
                        hintText: '*******',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        obscureText: controller.isObscurePassword,
                        hintFontColor: Colors.grey.withOpacity(0.7),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          onPressed: () {
                            controller.changeObscurePassword();
                          },
                        ),
                      );
                    }),
                    const SizedBox(height: 10),
                    Observer(builder: (context) {
                      return AppTextField(
                        controller: TextEditingController(),
                        hintText: '*******',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        obscureText: controller.isObscureRepeatPassword,
                        hintFontColor: Colors.grey.withOpacity(0.7),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          onPressed: () {
                            controller.changeObscureRepeatPassword();
                          },
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      // controller.changeTheme();
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).colorScheme.primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: AppText(
                      text: 'register'.tr().toUpperCase(),
                      fontColor: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'have_account'.tr()),
                    TextSpan(
                      text: " ${'login'.tr()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Modular.to.pushNamed(Routes.signup),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
