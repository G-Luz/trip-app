// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_trips_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListTripsController on ListTripsControllerBase, Store {
  final _$filterSelectedIndexAtom =
      Atom(name: 'ListTripsControllerBase.filterSelectedIndex');

  @override
  int get filterSelectedIndex {
    _$filterSelectedIndexAtom.reportRead();
    return super.filterSelectedIndex;
  }

  @override
  set filterSelectedIndex(int value) {
    _$filterSelectedIndexAtom.reportWrite(value, super.filterSelectedIndex, () {
      super.filterSelectedIndex = value;
    });
  }

  final _$ListTripsControllerBaseActionController =
      ActionController(name: 'ListTripsControllerBase');

  @override
  dynamic changeFilter(int filterIndex) {
    final _$actionInfo = _$ListTripsControllerBaseActionController.startAction(
        name: 'ListTripsControllerBase.changeFilter');
    try {
      return super.changeFilter(filterIndex);
    } finally {
      _$ListTripsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filterSelectedIndex: ${filterSelectedIndex}
    ''';
  }
}
