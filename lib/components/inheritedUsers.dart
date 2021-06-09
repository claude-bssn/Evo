
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:my_app/components/inheritedUsers.dart';

class UserData{
  String name, phone, email, adress, zip, town, birth, comment;
  UserData({
    this.name, 
    // this.phone,
    // this.email,
    // this.adress,
    // this.zip,
    // this.town,
    // this.birth,
    // this.comment,
  });
  
}
class _InheritedUsers extends InheritedWidget{
  
  final UsersState data;
  
  _InheritedUsers({this.data,Widget child}) : super(child: child);
  
  @override 
  bool updateShouldNotify(_InheritedUsers old)=>true;
}

// static InheritedUsers of(BuildContext context){
//   return context.dependOnInheritedWidgetOfExactType<InheritedUsers>();
// }
// }
class Users extends StatefulWidget {
  final Widget child;
  final UserData user;

  Users({
    @required this.child,
    this.user,
  }); 

  static _InheritedUsers of(BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<_InheritedUsers>());// Watch out //
  }


  @override
  UsersState createState() => new UsersState();
}

class UsersState extends State<Users> {
  UserData user;
  void updateUserInfo(
    {
      name, 
      // phone, 
      // email, 
      // adress, 
      // zip, 
      // town, 
      // birth, 
      // comment

    }){
      setState(() {
              user.name = name ?? user.name;
      });
    }
  @override
  Widget build(BuildContext context) {
    return new _InheritedUsers(
      data: this,
      child: widget.child,

    );
  }
}