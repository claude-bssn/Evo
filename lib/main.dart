import 'package:flutter/material.dart';
import 'package:my_app/user/repository/user_repository.dart';
import 'package:my_app/user/screen/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider(
      create: (_) => UserRepository(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: UserList(),
      ),
    );
  }
}
