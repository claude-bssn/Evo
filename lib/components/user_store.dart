// import 'package:mobx/mobx.dart';
// import 'package:my_app/components/form_search.dart';
// import 'package:my_app/user/model/user.dart';
// import 'package:my_app/user/repo/user_repository.dart';
// part 'user_store.g.dart';

// class UserStore = _UserStore with _$UserStore;

// abstract class _UserStore with Store{
//   final FormSearch search = FormSearch(UserRepository);
//   @observable
//   List users ;
  
//   @observable
//   var formKey;

//   @action
//   void updateUser(index, value){
//   // print(value.toString());
//     // List users = search.userList;
//   print(users);
//   UserData user= this.users[index];
//   user.lastName = value;
//   this.users[index] = user;
//   }
  
//   @action
//   void setFormKey(value){
//      formKey = value;
//      print(formKey);
//   }

// }