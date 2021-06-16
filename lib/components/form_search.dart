
// import 'dart:js';


import 'package:mobx/mobx.dart';
import 'package:my_app/main.dart';

part 'form_search.g.dart';

class FormSearch = _FormSearch with _$FormSearch;
abstract class _FormSearch with Store{
  _FormSearch(this.userRepository); //Le fait d'écrir cette ligne m'émpêche d'appeler  le constructor FormSearch() sans paramettre dans main.dart
  final UserRepository userRepository;
  @observable
  String enteredKeyword = '';
  
  @observable
  Future userList;// je ne sais pas quel Type lui assigner 
  
  @action
  void setEnteredKeyword(String value){
    enteredKeyword =value;
    
  }
  @action
  Future<UserRepository> getAll (){
    userList=  userRepository.getAll();// ici cette erreur il est censé prendre le context en paramettre mais quand je le renseigne il me dit que je ne peut pas renseigne ce type d'object
    return userList;
  }
  
}

