import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/login/controller/login_controller.dart';
import 'package:trip_app/app/routes.dart';
import 'package:trip_app/app/widgets/app_logo.dart';
import 'package:trip_app/app/widgets/app_text.dart';
import 'package:trip_app/app/widgets/app_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AppLogo(),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 10),
                child: Column(
                  children: [
                    AppTextField(
                      controller: TextEditingController(),
                      hintText: "type_your_email".tr(),
                      hintFontColor: Colors.grey.withOpacity(0.7),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      suffixIcon: Container(width: 0),
                    ),
                    const SizedBox(height: 30),
                    AppTextField(
                      controller: TextEditingController(),
                      hintText: 'type_your_password'.tr(),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      obscureText: true,
                      textFieldBackgroundColor: Colors.white,
                      hintFontColor: Colors.grey.withOpacity(0.7),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onPressed: () {
                          print('cliquei');
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText(
                      text: "forgot_password".tr(),
                      fontColor: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
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
                      text: 'login'.tr().toUpperCase(),
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'dont_have_account'.tr()),
                    TextSpan(
                      text: " ${'signup'.tr()}",
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
