// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on _Counter, Store {
  late final _$countAtom = Atom(name: '_Counter.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$_CounterActionController =
      ActionController(name: '_Counter', context: context);

  @override
  void add([int step = 1]) {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.add');
    try {
      return super.add(step);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sub() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.sub');
    try {
      return super.sub();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}
