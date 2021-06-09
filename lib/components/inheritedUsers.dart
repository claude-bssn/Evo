
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class UserData{
  String id,lastName, phone, email, adress, zipCode, city, birth, comment, name;

  UserData({
    this.id,
    this.lastName, 
    this.phone,
    this.email,
    this.adress,
    this.zipCode,
    this.city,
    this.birth,
    this.comment,
    this.name,
  });
  factory UserData.fromJson(Map<String, dynamic > data){
  return UserData(
    id : data['id'],
    lastName : data['last_name'],
    phone : data['phone'], 
    email : data['email'],
    adress : data['adress'],
    zipCode : data['zip_code'],
    city : data['city'],
    birth : data['birth'],
    comment : data['comment']);

  }


}
  

class _InheritedUsers extends InheritedWidget{
  
  final UsersState data;
  
  _InheritedUsers({
    @required this.data,
    @required Widget child,
    }) : super(child: child);
  
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

  static UsersState of(BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<_InheritedUsers>()).data;// Watch out //
  }


  @override
  UsersState createState() => new UsersState();
}

class UsersState extends State<Users> {
  UserData user;
  

  void updateUserInfo(
    {
      name 
      // phone, 
      // email, 
      // adress, 
      // zip, 
      // town, 
      // birth, 
      // comment

    })
  {
    var faker = new Faker();
  
  UserData user = UserData(
    name: faker.person.lastName()
  );
      if(user == null){
          user = new UserData(); 
        setState(() {
          user = user;         
        });
      }else{
        setState(() {
                user.name = name ?? user.name;
        });
      }
    }
  @override
  Widget build(BuildContext context) {
    var faker = new Faker();
    UserData user = UserData(
      name: faker.person.lastName()
    );
    return new _InheritedUsers(
      data: this,
      child: widget.child,

    );
  
  }
}