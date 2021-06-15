import 'package:my_app/user/model/user.dart';

class UserRepository {
  final List<User> users = [];

  Future<List<User>> getAll() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      User('1', 'Pierrette Lamour'),
      User('2', 'Clarimunda Therriault'),
      User('3', 'Valérie St-Jean'),
    ];
  }
}
