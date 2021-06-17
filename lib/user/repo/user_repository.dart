import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:my_app/user/model/user.dart';

class UserRepository {
  Future<List<UserData>> getAll(BuildContext context) async {
    final userJson = await DefaultAssetBundle.of(context)
        .loadString("assets/MOCK_DATA.json");
    final userList = parseData(userJson.toString());
    return userList;
  }

  List<UserData> parseData(String response) {
    final parsed = jsonDecode(response.toString()).cast<Map<String, Object>>();
    parsed.sort((a, b) => a['last_name']
        .toString()
        .toLowerCase()
        .compareTo(b['last_name'].toString().toLowerCase()));

    return parsed.map<UserData>((json) => new UserData.fromJson(json)).toList();
  }
}
