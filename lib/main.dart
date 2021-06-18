import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/user/repo/user_repository.dart';
import 'package:provider/provider.dart';

import 'components/customer_form.dart';
import 'components/form_search.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    Provider(
      create: (context) => UserRepository(),
      child: MyApp(),
    ),
  );
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
  FormSearch formSearch;
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    final userRepository = Provider.of<UserRepository>(context, listen: false);
    formSearch = FormSearch(userRepository);
    formSearch.getAll(context);
  }

  bool _showForm = false;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => formSearch,
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
                            _showForm = false;
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
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Utilisateur mis à jour")));
                          setState(() {
                            _showForm = false;
                            formSearch.updateUser(formSearch.userSelected);
                          });
                        },
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
                          if (_showForm == true) CustomerForm(),
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              formSearch.setSearch(value);
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.85,
                        child: Observer(
                          builder: (_) {
                            final users = formSearch.users;
                            return ListView.separated(
                              separatorBuilder: (_, index) =>
                                  Divider(height: 1),
                              itemCount: users.length,
                              itemBuilder: (_, index) {
                                final user = users[index];
                                return ListTile(
                                  title: Text(user.lastName),
                                  subtitle: Text(user.phone),
                                  onTap: () {
                                    setState(
                                      () {
                                        formSearch.selectUser(user);
                                        _showForm = true;
                                      },
                                    );
                                  },
                                );
                              },
                            );
                          },
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
