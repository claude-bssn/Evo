import 'package:flutter/material.dart';
import 'package:my_app/user/model/user.dart';
import 'package:my_app/user/repository/user_repository.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRepository = Provider.of<UserRepository>(context, listen: false);
    return FutureBuilder<List<User>>(
      future: userRepository.getAll(),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (_, index) {
              final user = snapshot.data[index];
              return ListTile(title: Text(user.fullName));
            },
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
