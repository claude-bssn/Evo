import 'package:flutter/material.dart';

class UserData {
  String id,
      lastName,
      phone,
      email,
      address,
      zipCode,
      city,
      birth,
      comment,
      name;

  UserData({
    this.id,
    this.lastName,
    this.phone,
    this.email,
    this.address,
    this.zipCode,
    this.city,
    this.birth,
    this.comment,
    this.name,
  });
  factory UserData.fromJson(Map<String, dynamic> data) {
    return UserData(
        id: data['id'],
        lastName: data['last_name'],
        phone: data['phone'],
        email: data['email'],
        address: data['adress'],
        zipCode: data['zip_code'],
        city: data['city'],
        birth: data['birth'],
        comment: data['comment']);
  }
}

class _InheritedUsers extends InheritedWidget {
  final UsersState data;

  _InheritedUsers({
    @required this.data,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(_InheritedUsers oldWidget) => oldWidget.data != data;
}

class Users extends StatefulWidget {
  final Widget child;
  final UserData user;

  Users({
    @required this.child,
    this.user,
  });

  static UsersState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<_InheritedUsers>()).data;
  }

  @override
  UsersState createState() => new UsersState();
}

class UsersState extends State<Users> {
  UserData user;

  void updateUserInfo(
      {lastName, phone, email, address, zipCode, city, birth, comment}) {
    if (user == null) {
      user = new UserData();
      setState(() {
        user = user;
      });
    } else {
      setState(() {
        user.lastName = lastName ?? user.lastName;
        user.email = email ?? user.email;
        user.phone = phone ?? user.phone;
        user.address = address ?? user.address;
        user.zipCode = zipCode ?? user.zipCode;
        user.city = city ?? user.city;
        user.birth = birth ?? user.birth;
        user.comment = comment ?? user.comment;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new _InheritedUsers(
      data: this,
      child: widget.child,
    );
  }
}
