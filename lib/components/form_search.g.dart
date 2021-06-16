// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormSearch on _FormSearch, Store {
  final _$enteredKeywordAtom = Atom(name: '_FormSearch.enteredKeyword');

  @override
  String get enteredKeyword {
    _$enteredKeywordAtom.reportRead();
    return super.enteredKeyword;
  }

  @override
  set enteredKeyword(String value) {
    _$enteredKeywordAtom.reportWrite(value, super.enteredKeyword, () {
      super.enteredKeyword = value;
    });
  }

  final _$userListAtom = Atom(name: '_FormSearch.userList');

  @override
  Future<dynamic> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(Future<dynamic> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$_FormSearchActionController = ActionController(name: '_FormSearch');

  @override
  void setEnteredKeyword(String value) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.setEnteredKeyword');
    try {
      return super.setEnteredKeyword(value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<UserRepository> getAll() {
    final _$actionInfo =
        _$_FormSearchActionController.startAction(name: '_FormSearch.getAll');
    try {
      return super.getAll();
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enteredKeyword: ${enteredKeyword},
userList: ${userList}
    ''';
  }
}
