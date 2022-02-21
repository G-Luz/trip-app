// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupController on SignupControllerBase, Store {
  final _$passwordNotMatchAtom =
      Atom(name: 'SignupControllerBase.passwordNotMatch');

  @override
  bool get passwordNotMatch {
    _$passwordNotMatchAtom.reportRead();
    return super.passwordNotMatch;
  }

  @override
  set passwordNotMatch(bool value) {
    _$passwordNotMatchAtom.reportWrite(value, super.passwordNotMatch, () {
      super.passwordNotMatch = value;
    });
  }

  final _$isInvalidPasswordAtom =
      Atom(name: 'SignupControllerBase.isInvalidPassword');

  @override
  bool get isInvalidPassword {
    _$isInvalidPasswordAtom.reportRead();
    return super.isInvalidPassword;
  }

  @override
  set isInvalidPassword(bool value) {
    _$isInvalidPasswordAtom.reportWrite(value, super.isInvalidPassword, () {
      super.isInvalidPassword = value;
    });
  }

  final _$isInvalidEmailAtom =
      Atom(name: 'SignupControllerBase.isInvalidEmail');

  @override
  bool get isInvalidEmail {
    _$isInvalidEmailAtom.reportRead();
    return super.isInvalidEmail;
  }

  @override
  set isInvalidEmail(bool value) {
    _$isInvalidEmailAtom.reportWrite(value, super.isInvalidEmail, () {
      super.isInvalidEmail = value;
    });
  }

  final _$isInvalidNameAtom = Atom(name: 'SignupControllerBase.isInvalidName');

  @override
  bool get isInvalidName {
    _$isInvalidNameAtom.reportRead();
    return super.isInvalidName;
  }

  @override
  set isInvalidName(bool value) {
    _$isInvalidNameAtom.reportWrite(value, super.isInvalidName, () {
      super.isInvalidName = value;
    });
  }

  final _$isObscurePasswordAtom =
      Atom(name: 'SignupControllerBase.isObscurePassword');

  @override
  bool get isObscurePassword {
    _$isObscurePasswordAtom.reportRead();
    return super.isObscurePassword;
  }

  @override
  set isObscurePassword(bool value) {
    _$isObscurePasswordAtom.reportWrite(value, super.isObscurePassword, () {
      super.isObscurePassword = value;
    });
  }

  final _$isObscureRepeatPasswordAtom =
      Atom(name: 'SignupControllerBase.isObscureRepeatPassword');

  @override
  bool get isObscureRepeatPassword {
    _$isObscureRepeatPasswordAtom.reportRead();
    return super.isObscureRepeatPassword;
  }

  @override
  set isObscureRepeatPassword(bool value) {
    _$isObscureRepeatPasswordAtom
        .reportWrite(value, super.isObscureRepeatPassword, () {
      super.isObscureRepeatPassword = value;
    });
  }

  final _$SignupControllerBaseActionController =
      ActionController(name: 'SignupControllerBase');

  @override
  dynamic changeObscurePassword() {
    final _$actionInfo = _$SignupControllerBaseActionController.startAction(
        name: 'SignupControllerBase.changeObscurePassword');
    try {
      return super.changeObscurePassword();
    } finally {
      _$SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeObscureRepeatPassword() {
    final _$actionInfo = _$SignupControllerBaseActionController.startAction(
        name: 'SignupControllerBase.changeObscureRepeatPassword');
    try {
      return super.changeObscureRepeatPassword();
    } finally {
      _$SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordNotMatch: ${passwordNotMatch},
isInvalidPassword: ${isInvalidPassword},
isInvalidEmail: ${isInvalidEmail},
isInvalidName: ${isInvalidName},
isObscurePassword: ${isObscurePassword},
isObscureRepeatPassword: ${isObscureRepeatPassword}
    ''';
  }
}
