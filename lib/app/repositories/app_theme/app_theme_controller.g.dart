// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppThemeController on AppThemeControllerBase, Store {
  final _$themeAtom = Atom(name: 'AppThemeControllerBase.theme');

  @override
  String get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(String value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$setThemeAsyncAction = AsyncAction('AppThemeControllerBase.setTheme');

  @override
  Future setTheme(String theme) {
    return _$setThemeAsyncAction.run(() => super.setTheme(theme));
  }

  final _$getThemeAsyncAction = AsyncAction('AppThemeControllerBase.getTheme');

  @override
  Future getTheme() {
    return _$getThemeAsyncAction.run(() => super.getTheme());
  }

  final _$hasDefaultThemeAsyncAction =
      AsyncAction('AppThemeControllerBase.hasDefaultTheme');

  @override
  Future<bool> hasDefaultTheme() {
    return _$hasDefaultThemeAsyncAction.run(() => super.hasDefaultTheme());
  }

  @override
  String toString() {
    return '''
theme: ${theme}
    ''';
  }
}
