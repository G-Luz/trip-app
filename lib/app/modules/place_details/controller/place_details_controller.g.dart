// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlaceDetailsController on PlaceDetailsControllerBase, Store {
  final _$selectedIndexAtom =
      Atom(name: 'PlaceDetailsControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$PlaceDetailsControllerBaseActionController =
      ActionController(name: 'PlaceDetailsControllerBase');

  @override
  dynamic sectionOptionCallback(int index) {
    final _$actionInfo = _$PlaceDetailsControllerBaseActionController
        .startAction(name: 'PlaceDetailsControllerBase.sectionOptionCallback');
    try {
      return super.sectionOptionCallback(index);
    } finally {
      _$PlaceDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
