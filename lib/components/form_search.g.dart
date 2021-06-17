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
  Future<List<UserData>> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(Future<List<UserData>> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$usersAtom = Atom(name: '_FormSearch.users');

  @override
  List<dynamic> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(List<dynamic> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_FormSearch.formKey');

  @override
  dynamic get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(dynamic value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  final _$_FormSearchActionController = ActionController(name: '_FormSearch');

  @override
  void setSearch(String value) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserList(List<dynamic> value) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.setUserList');
    try {
      return super.setUserList(value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUsers(List<dynamic> value) {
    final _$actionInfo =
        _$_FormSearchActionController.startAction(name: '_FormSearch.setUsers');
    try {
      return super.setUsers(value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFormKey(dynamic value) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.setFormKey');
    try {
      return super.setFormKey(value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateUser(dynamic index, dynamic value) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.updateUser');
    try {
      return super.updateUser(index, value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> getAll(BuildContext context) {
    final _$actionInfo =
        _$_FormSearchActionController.startAction(name: '_FormSearch.getAll');
    try {
      return super.getAll(context);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enteredKeyword: ${enteredKeyword},
userList: ${userList},
users: ${users},
formKey: ${formKey}
    ''';
  }
}
