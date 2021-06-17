// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$usersAtom = Atom(name: '_UserStore.users');

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

  final _$formKeyAtom = Atom(name: '_UserStore.formKey');

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

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  void updateUser(dynamic index, dynamic value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.updateUser');
    try {
      return super.updateUser(index, value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFormKey(dynamic value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setFormKey');
    try {
      return super.setFormKey(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users},
formKey: ${formKey}
    ''';
  }
}
