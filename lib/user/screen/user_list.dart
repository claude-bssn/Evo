// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:my_app/user/model/user.dart';
// import 'package:my_app/user/repo/user_repository.dart';
// import 'package:provider/provider.dart';

// class UserList extends StatefulWidget {
//   const UserList({ Key key }) : super(key: key);

//   @override
//   _UserListState createState() => _UserListState();
// }

// class _UserListState extends State<UserList> {
//   @override
//   Widget build(BuildContext context) {
//     final userRepository = Provider.of<UserRepository>(context, listen: false);
//       return FutureBuilder <List<UserData>>(
//         future: userRepository.getAll(context),
//         builder: (_, snapshot)  {


//         var dataCustomer = [];
//             dataCustomer = snapshot.data;
//           // if(search.enteredKeyword.isEmpty){
            
//           //   dataCustomer = snapshot.data;
//           // } else {
//           //   dataCustomer = snapshot.data
//           //       .where((user) =>
//           //           user.lastName.toLowerCase().contains(search.enteredKeyword.toLowerCase()))
//           //       .toList();
//           // }
//           // print(dataCustomer);
//           return ListView.separated(
//             separatorBuilder:
//                 (BuildContext context, int index) =>
//                     Divider(height: 1),

//             itemCount: dataCustomer == null
//                 ? 0
//                 : dataCustomer.length,
//             itemBuilder: (BuildContext context, int index) {
//               final user =snapshot.data[index];
//               return ListTile(
//                 title: Text(user.lastName),
//                 subtitle: Text(user.phone),
//                 onTap: () {
//                   setState(() {
//                     // TODO(lsaudon): Ici on donne la valeur à la variable
//                     userData = dataCustomer[index];
//                     showForm = true;
//                 });       
//               },
//             );
//           },
//         );
//       },
//   }
// }