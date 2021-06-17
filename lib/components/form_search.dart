import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_app/user/model/user.dart';
import 'package:my_app/user/repo/user_repository.dart';

part 'form_search.g.dart';

class FormSearch = _FormSearch with _$FormSearch;
abstract class _FormSearch with Store{
  _FormSearch(this.userRepository); 
  final UserRepository userRepository;
  
  @observable
  String enteredKeyword = '';
  
  @observable
  Future<List<UserData>> userList ;
  
  @observable
  List users ;

  @observable
  var formKey;
  

  @action
  void setSearch(String value){
    enteredKeyword =value;
    users=userList ;
    if(enteredKeyword.isEmpty && enteredKeyword == null){
      users= users;                    
    } else {                      
      users = users
        .where((user) =>
            user.lastName.toLowerCase().contains(enteredKeyword.toLowerCase()))
        .toList();
                                                                          
    }
  }
  @action
  void setUserList(List value){
    userList = value as ObservableFuture<List<UserData>> ;
    
  }
   @action
  void setUsers(List value){
    users = userList  ;
    
  }
  @action
  void setFormKey(value){
     formKey = value;
     print(formKey);
  }

  @action
  void updateUser(index, value){
  // print(value.toString());
  //   List users = search.userList;
  // print(users);
  // UserData user= this.users[index];
  // user.lastName = value;
  // this.users[index] = user;
  }
  @action 
  Future getAll(BuildContext context){
    return userList = userRepository.getAll(context);
  }
  
}

