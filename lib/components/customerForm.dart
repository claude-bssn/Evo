import 'package:flutter/material.dart';

class CustomerForm extends StatefulWidget {

  @override
  _CustomerFormState createState() => _CustomerFormState();
}

class _CustomerFormState extends State<CustomerForm> {
  final _formKey = GlobalKey<FormState>();
  var page;

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: Row(

            children: <Widget>[
            
                  Radio(
                    value: 'person',
                    groupValue: page,
                    onChanged: (val) {
                      setState(() {
                      
                      });
                    }
                  ),
                  Icon(Icons.person),
                    
                  Radio(
                    value: 'company',
                    groupValue: page,
                    onChanged: (val) {
                      setState(() {
                      
                      });
                    }
                  ),
                  Icon(Icons.business),
                  
                
              
            ],
          ),
        ),
                
        Container(
          
          child: Column(
            children: [
              Form(
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
                        Container(),
                        
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: 200,
                          height: 50,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[800],
                            ),
                            initialValue: 'Input text',
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
                            initialValue: 'Input text',
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
                            initialValue: 'Input text',
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
                            initialValue: 'Input text',
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
                                  initialValue: 'Input text',
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
                                  initialValue: 'Input text',
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
                            initialValue: 'Input text',
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Birth Date',
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
                            initialValue: 'Input text',
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
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          
                          children: [
                            
                            SizedBox(
                              height: 35,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: FloatingActionButton.extended(
                                  label: Text('Annuler', style: TextStyle(fontSize: 13)),
                                  backgroundColor: Colors.red,
                                  onPressed: (){

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
                                  
                                  label: Text('Valider', style: TextStyle(fontSize: 13),),
                                  backgroundColor: Color(0xFF95b900),
                                  onPressed: (){
                                    
                                  },
                                ),
                              ),
                            )
                          ],
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