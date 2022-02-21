import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:trip_app/app/repositories/app_theme/app_theme_controller.dart';

part 'signup_controller.g.dart';

class SignupController = SignupControllerBase with _$SignupController;

abstract class SignupControllerBase with Store {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatController = TextEditingController();

  @observable
  bool passwordNotMatch = false;

  @observable
  bool isInvalidPassword = false;

  @observable
  bool isInvalidEmail = false;

  @observable
  bool isInvalidName = false;

  @observable
  bool isObscurePassword = true;

  @observable
  bool isObscureRepeatPassword = true;


  SignupControllerBase(){
    // emailController.addListener(checkIsValidEmail);

  }

  @action
  changeObscurePassword() {
    if (isObscurePassword) {
      isObscurePassword = false;
    } else {
      isObscurePassword = true;
    }
  }

  @action
  changeObscureRepeatPassword() {
    if (isObscureRepeatPassword) {
      isObscureRepeatPassword = false;
    } else {
      isObscureRepeatPassword = true;
    }
  }


  checkInvalidFields() {
    if (emailController.text.trim().length > 0 ||
        emailController.text.trim().isNotEmpty) {

      print('ta pegando?');

      isInvalidEmail = !RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController.text.trim());
    } else {

      print('ta pegando?');

      isInvalidEmail = false;
    }
  }
}
