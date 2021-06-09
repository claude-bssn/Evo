import 'dart:io';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:my_app/components/inheritedUsers.dart';

class CustomerList extends StatefulWidget {
  // const CustomerList({ Key? key }) : super(key: key);

  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
 
  @override
  Widget build(BuildContext context) {
    final random = RandomGenerator(seed: 1); 
    final faker = Faker.withGenerator(random);
    final data = Users.of(context);

    bool isSearching =true; 
    bool tapName = false; 
    
    
    

    return  Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        
          // color: Colors.white,
        
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  
                  child: Container(
                    height: 35,
                    child: TextField(
                              
                              decoration: InputDecoration(
                                
                                suffixIcon: Icon(Icons.search,
                                  color: Colors.grey,),
                                filled: true,
                                fillColor: Colors.grey[200],
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(Radius.circular(50))),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(Radius.circular(50))),
                              ),
                            
                            ),
                  ),
                ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.85,

                        child: ListView.separated(
                          
                            itemCount: 100,
                            separatorBuilder: (BuildContext context, int index) => Divider(height: 1),
                            itemBuilder: (BuildContext context, int index){
                              new UserData( name: faker.person.lastName());
                                print("${data.data}");
                              return ListTile(
                                title: Text (faker.person.firstName() + " " + faker.person.lastName()),
                                subtitle: Text (faker.phoneNumber.us()),
                                onTap: (){
                                  setState(() {
                                    tapName =true;                                
                                  });
                                  print(tapName);
                                },
                              );

                            },
                          ),
                      ),
              ],
            ),
          ),
          
                
                  
                  
                
                
                
              
            
          
        ),
      );
    
  }
}