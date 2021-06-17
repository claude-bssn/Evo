
// import 'dart:js';


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'InheritedUsers.dart';

part 'form_search.g.dart';

class FormSearch = _FormSearch with _$FormSearch;
abstract class _FormSearch with Store{
  // _FormSearch(this.userList); //Le fait d'écrir cette ligne m'émpêche d'appeler  le constructor FormSearch() sans paramettre dans main.dart$
  // final UserRepository userRepository;
  @observable
  String enteredKeyword = '';
  
  @observable
  ObservableMap userList ;
  
  @action
  void setEnteredKeyword(String value){
    enteredKeyword =value;
    
  }
  @action
  Future getAll(BuildContext context)async{
    final userJson =   await DefaultAssetBundle.of(context).loadString("assets/MOCK_DATA.json");
    final userList =  parseData(userJson.toString());
    return userList;
  }
  List parseData(String response) {
    
    final parsed = jsonDecode(response.toString()).cast<Map<String, Object>>();
    parsed.sort((a,b) =>a['last_name'].toString().toLowerCase().compareTo(b['last_name'].toString().toLowerCase()));
    
    return parsed.map<UserData>((json) => new UserData.fromJson(json)).toList();
  }
  void getUsers(context){
    getAll(context);
  }
  
}

