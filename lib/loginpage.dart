

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';



class LoginPage extends StatefulWidget {
 
  @override
   LoginPageState createState() =>  LoginPageState();
}

class  LoginPageState extends State<LoginPage> {

  String email;
  String password;

  FacebookLogin fbLogin = new FacebookLogin();



  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      

        body:Builder(
        builder: (context) => Stack(
        fit: StackFit.expand,
        children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width,
             height:  MediaQuery.of(context).size.height,
                child: Image.network(
                   'https://images.unsplash.com/photo-1518050947974-4be8c7469f0c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
                   ,fit: BoxFit.fill,
                   color: Color.fromRGBO(255, 255, 255, 0.6),
                  colorBlendMode: BlendMode.modulate
                ),
              ),
         Center(
      child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText:'Email',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                 border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                   prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                ),
                onChanged:(value){
                  setState(() {
                    email = value;
                  });

                }
              ),
              
              
              


              SizedBox(height: 15.0),
              TextField( 
                decoration: InputDecoration(hintText: 'Password',
                 hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                 border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                   prefixIcon: const Icon(
                            Icons.security,
                            color: Colors.white,
                          ),),
                
                onChanged: (value){
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              
              RaisedButton(
                  
                 shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                child: Text('Login'),
                
                color: Colors.blue,
                textColor: Colors.white,
                elevation:9.0,
                
                
                onPressed:(){

                  FirebaseAuth.instance
                     .signInWithEmailAndPassword(
                         email: email, password: password)
                     .then((AuthResult user) {
                       Navigator.of(context).pushReplacementNamed('/homepage');
                     })
                     .catchError((e){
                       print(e);
                     });

                },
                
              ),
              SizedBox(height:15.0),
              
            
              Text("Don\ 't have an account",style: TextStyle(color:Colors.white),),
              SizedBox(height: 10.0),
              RaisedButton(
                shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                child: Text('Sign Up'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation:7.0,
                onPressed:(){
                   Navigator.of(context).pushNamed('/signup');

                },
              ),
                SizedBox(height:10.0),
              
            
              Text("Click Below Button for Google, Facebook and Twitter Logins",style: TextStyle(color:Colors.white),),
              
              SizedBox(height: 10.0),
              RaisedButton(
                shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                child: Text('Google Login'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation:7.0,
                onPressed:(){
                   Navigator.of(context).pushNamed('/sociallogin');

                },
              ),
               
              SizedBox(height: 10.0),
              RaisedButton(
                shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                child: Text('Facebook Login'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation:7.0,
                onPressed:(){
                   Navigator.of(context).pushNamed('/facebooklogin');

                },
              ),

                SizedBox(height: 10.0),
              RaisedButton(
                shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                child: Text('Twitter Login'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation:7.0,
                onPressed:(){
                   Navigator.of(context).pushNamed('/twitterlogin');

                },
              ),
           
           


            
            ],
          ),
        ))]
        ))
        );
  
  }
}
  