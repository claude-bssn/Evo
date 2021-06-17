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

  final _$usersAtom = Atom(name: '_FormSearch.users');

  @override
  List<UserData> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(List<UserData> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$userSelectedAtom = Atom(name: '_FormSearch.userSelected');

  @override
  UserData get userSelected {
    _$userSelectedAtom.reportRead();
    return super.userSelected;
  }

  @override
  set userSelected(UserData value) {
    _$userSelectedAtom.reportWrite(value, super.userSelected, () {
      super.userSelected = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_FormSearch.formKey');

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  final _$getAllAsyncAction = AsyncAction('_FormSearch.getAll');

  @override
  Future<void> getAll(BuildContext context) {
    return _$getAllAsyncAction.run(() => super.getAll(context));
  }

  final _$_FormSearchActionController = ActionController(name: '_FormSearch');

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
  void selectUser(UserData user) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.selectUser');
    try {
      return super.selectUser(user);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateUser(int index, UserData value) {
    final _$actionInfo = _$_FormSearchActionController.startAction(
        name: '_FormSearch.updateUser');
    try {
      return super.updateUser(index, value);
    } finally {
      _$_FormSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enteredKeyword: ${enteredKeyword},
users: ${users},
userSelected: ${userSelected},
formKey: ${formKey}
    ''';
  }
}
