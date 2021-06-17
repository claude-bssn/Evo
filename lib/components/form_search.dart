import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_app/user/model/user.dart';
import 'package:my_app/user/repo/user_repository.dart';

part 'form_search.g.dart';

class FormSearch = _FormSearch with _$FormSearch;

abstract class _FormSearch with Store {
  _FormSearch(this.userRepository);
  final UserRepository userRepository;

  @observable
  String enteredKeyword = '';

  List<UserData> _userList = [];

  @observable
  List<UserData> users = [];

  @observable
  UserData userSelected;

  @observable
  GlobalKey<FormState> formKey;

  @action
  void setFormKey(value) {
    formKey = value;
  }

  @action
  void setSearch(String value) {
    enteredKeyword = value;
    users = _userList;
    if (enteredKeyword.isNotEmpty || enteredKeyword != null) {
      users = users
          .where((user) => user.lastName
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
  }

  @action
  void selectUser(UserData user) {
    userSelected = user;
  }

  @action
  void updateUser(int index, UserData value) {
    print(value.toString());
    // trouver le user avec userSelected.id
    // changer ça valeur dans _userList
    // changer users
  }

  @action
  Future<void> getAll(BuildContext context) async {
    _userList = await userRepository.getAll(context);
    users = _userList;
  }
}
