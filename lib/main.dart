import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/components/customerList.dart';
import 'package:my_app/components/inheritedUsers.dart'; 

import 'components/customerForm.dart'; 


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(new Users(child: new MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Custumer info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: InfoPage()
        ,)
      ),
    );
  }
}

class InfoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        


        Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: SingleChildScrollView(
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
                  height: MediaQuery.of(context).size.height ,
                  color: Colors.indigo[50],
                child: CustomerForm(),
                
              ),
              ],
            ),
          ),
          
        ),
      
        Container( 
            color: Colors.blue[700],
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.35,
            child: CustomerList()
          ),
          
         
       

     ],
   );
 }
}



