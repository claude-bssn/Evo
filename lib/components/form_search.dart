import 'package:mobx/mobx.dart';

part 'form_search.g.dart';
class FormSearch = _FormSearch with _$FormSearch;

  
abstract class _FormSearch with Store{
  @observable
  String enteredKeyword = '';
  
  @action
  void setEnteredKeyword(String value){
    enteredKeyword =value;
    
  }
  
}

