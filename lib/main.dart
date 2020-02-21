import 'package:flutter/material.dart';

import 'package:sociallogin/homepage.dart';
import 'package:sociallogin/loginpage.dart';
import 'package:sociallogin/singnuppage.dart';
import 'package:sociallogin/socialLogins.dart';
import 'package:sociallogin/twitterlog.dart';

import 'facetwitterlog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/landingPage':(BuildContext context)=> new MyApp(),
        '/signup':(BuildContext context) => new SignupPage(),
        '/homepage':(BuildContext context) => new HomePage(),
        '/loginpage':(BuildContext context) => new LoginPage(),
        '/sociallogin':(BuildContext context) => new Sociallogin(),
        '/facebooklogin':(BuildContext context) => new sociallog(),
        '/twitterlogin':(BuildContext context) => new twitterlogin()

      },



     );
  }


  
}