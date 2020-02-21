import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sociallogin/services/Usermanagement.dart';

class SignupPage extends StatefulWidget {
 
  @override
   SignupPageState createState() =>  SignupPageState();
}

class  SignupPageState extends State<SignupPage> {

  String email;
  String password;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

        body: Center(
      child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText:'Email'),
                onChanged:(value){
                  setState(() {
                    email = value;
                  });

                }
              ),

              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value){
                  setState(() {
                    password = value;
                  });
                }
              ),
              SizedBox(height: 20.0),
              
              RaisedButton(
                child: Text('Sign UP'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation:7.0,
                onPressed:(){
                  FirebaseAuth.instance.createUserWithEmailAndPassword
                   (email: email, password: password)
                   .then((signedInUser){
                     Navigator.of(context).pushReplacementNamed('/homepage');
                   

                })
                .catchError((e){
                  print(e);
                });

                },
              ),
             

            
            ],
          )),
        ));
  }
}
  