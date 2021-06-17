import 'package:mobx/mobx.dart';

part 'form_search.g.dart';

class FormSearch = _FormSearch with _$FormSearch;
abstract class _FormSearch with Store{
  // _FormSearch(this.userList); //Le fait d'écrir cette ligne m'émpêche d'appeler  le constructor FormSearch() sans paramettre dans main.dart$
  // final UserRepository userRepository;
  @observable
  String enteredKeyword = '';
  
  @observable
  List userList ;
  
  @observable
  List users ;

  @action
  void setSearch(String value){
    enteredKeyword =value;
    users=userList;
    if(enteredKeyword.isEmpty && enteredKeyword == null){
      users= userList;                    
    } else {                      
      users = userList
        .where((user) =>
            user.lastName.toLowerCase().contains(enteredKeyword.toLowerCase()))
        .toList();
                                                                          
    }
  }
  @action
  void setUserList(List value){
    userList = value ;
    
  }
   @action
  void setUsers(List value){
    users = userList ;
    
  }
  
}

