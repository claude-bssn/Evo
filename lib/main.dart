import 'dart:convert';

// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/components/InheritedUsers.dart';
import 'package:provider/provider.dart';

import 'components/customerForm.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp( new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custumer info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: InfoPage(),
      )),
    );
  }
}

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  // TODO(lsaudon): Ici on a la variable
  UserData userData;
  bool showForm = false;
  

  List<UserData> parseData(String response) {
    final parsed = json.decode(response.toString()).cast<Map<String, Object>>();
    return parsed.map<UserData>((json) => new UserData.fromJson(json)).toList();
  
  }

  @override
  Widget build(BuildContext context) {

    // TODO(lsaudon): Ici on a le provider qui est au dessus des deux widgets (list et formulaire)
    return ChangeNotifierProvider<UserData>.value(
      value: userData,
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            height: MediaQuery.of(context).size.height,
            child: Scaffold(
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: FloatingActionButton.extended(
                        label: Text('Annuler', style: TextStyle(fontSize: 13)),
                        backgroundColor: Colors.red,
                        onPressed: () {
                          setState(() {
                            showForm = false;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: FloatingActionButton.extended(
                        label: Text(
                          'Valider',
                          style: TextStyle(fontSize: 13),
                        ),
                        backgroundColor: Color(0xFF95b900),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(100, 15, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Row(
                          children: [
                            Text('Infos'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.947,
                      color: Colors.indigo[50],
                      child: Column(
                        children: [
                          if (showForm == true) CustomerForm(),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue[700],
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(5, 1),
                  )
                ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                          ),
                        ),
                      ),
                      
                      Container(
                        height: MediaQuery.of(context).size.height * 0.85,
                        child: FutureBuilder (
                          builder: (context, snapshot) {
                            var dataCustomer = parseData(snapshot.data.toString());
                                
                            // print(dataCustomer[1].toString());
                            return ListView.separated(
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      Divider(height: 1),
                              itemCount: dataCustomer == null
                                  ? 0
                                  : dataCustomer.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(dataCustomer[index].lastName),
                                  subtitle: Text(dataCustomer[index].phone),
                                  onTap: () {
                                    setState(() {
                                      // TODO(lsaudon): Ici on donne la valeur à la variable
                                        userData = dataCustomer[index];
                                        showForm = true;
                                        // print("${userData.lastName}");

                                    });
                                              
                                  },
                                );
                              },
                            );
                          },
                          future: DefaultAssetBundle.of(context)
                              .loadString("assets/MOCK_DATA.json"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
