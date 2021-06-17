import 'package:flutter/material.dart';
import 'package:my_app/components/user_store.dart';
import 'package:my_app/user/model/user.dart';
import 'package:provider/provider.dart';


class CustomerForm extends StatefulWidget {
  CustomerForm({Key key}) : super(key: key);
  @override
  _CustomerFormState createState() => _CustomerFormState();
}

class _CustomerFormState extends State<CustomerForm> {
  // final UserStore userStore= UserStore();
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  String selectedValue = 'person';
  bool tapName;
  UserData user;

  @override
  Widget build(BuildContext context) {
    // TODO(lsaudon): ici on récupere la variable
    final userData = Provider.of<UserData>(context, listen: false);
    print("${userData.lastName}");
  //  userStore.setFormKey(_formKey) ;
    
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: Row(
            children: <Widget>[
              Radio<String>(
                  value: 'person',
                  groupValue: selectedValue,
                  onChanged: (val) {
                    setState(() {
                      selectedValue = 'person';
                    });
                  }),
              Icon(Icons.person),
              Radio<String>(
                  value: 'business',
                  groupValue: selectedValue,
                  onChanged: (val) {
                    setState(() {
                      selectedValue = 'business';
                    });
                  }),
              Icon(Icons.business),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 200,
                            height: 50,
                            child: TextFormField(
                              validator: (value){
                                if (value == null || value.isEmpty){
                                  return 'Veuillez renseigner le champ';
                                }
                                return null;
                              },
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[800],
                              ),
                              controller :TextEditingController()..text= "${userData.lastName}",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nom',
                                labelStyle: TextStyle(
                                  color: Color(0xFF6200EE),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                width: 200,
                                height: 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                  ),
                                  controller :TextEditingController()..text= "${userData.phone}",
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Téléphone 1',
                                    labelStyle: TextStyle(
                                      color: Color(0xFF6200EE),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                width: 265,
                                height: 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                  ),
                                  controller :TextEditingController()..text= "${userData.email}",
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      color: Color(0xFF6200EE),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 50,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[800],
                              ),
                              controller :TextEditingController()..text= "${userData.address}",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Adresse de facturation',
                                labelStyle: TextStyle(
                                  color: Color(0xFF6200EE),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                width: 100,
                                height: 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                  ),
                                  controller :TextEditingController()..text= "${userData.zipCode}",
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Code postal',
                                    labelStyle: TextStyle(
                                      color: Color(0xFF6200EE),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                width: 365,
                                height: 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                  ),
                                  controller :TextEditingController()..text= "${userData.city}",
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Ville',
                                    labelStyle: TextStyle(
                                      color: Color(0xFF6200EE),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 100,
                            height: 50,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[800],
                              ),
                              controller :TextEditingController()..text= "${userData.birth}",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Date de naissance',
                                labelStyle: TextStyle(
                                  color: Color(0xFF6200EE),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 150,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[800],
                              ),
                              controller :TextEditingController()..text= "${userData.comment}",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Commentaire',
                                labelStyle: TextStyle(
                                  color: Color(0xFF6200EE),
                                  fontSize: 15,
                                ),
                              ),
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
        ),
      ],
    );
  }
}
