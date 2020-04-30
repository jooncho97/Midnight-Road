import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:midnight_road/home.dart';
import 'package:midnight_road/Services/user_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key, this.title,this.auth}) : super(key: key);
  final BaseAuth auth;
  final String title;
  //ARROW SPECIFIES or similar to lambda WHICH RETURNS MYHOMEPAGESTATE
  @override
  _SignInPageState createState() => _SignInPageState();
}


class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference ref = FirebaseDatabase.instance.reference();
  final formKey = GlobalKey<FormState>();
  var emailEditController = TextEditingController();
  var pwEditController = TextEditingController();
//THIS CONTROLS THE UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Sign In"),
          backgroundColor: Color(0x44000000),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Background/test.jpg"), fit: BoxFit.cover))
            ),
            Container(
                child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.0)
                                ),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      cursorColor: Colors.orangeAccent,
                                      controller: emailEditController,
                                      decoration: InputDecoration(
                                        icon: new Icon( Icons.mail, color: Colors.grey,),
                                          enabledBorder: const OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.white, width: 2.0)),
                                        border: OutlineInputBorder(
                                        ),
                                        labelText: 'Email',
                                        labelStyle: TextStyle(color: Colors.white),
                                      ),
                                      style: new TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      obscureText: true,
                                      controller: pwEditController,
                                      decoration: InputDecoration(
                                        icon: new Icon( Icons.lock, color: Colors.grey,),
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide: const BorderSide(color: Colors.white, width: 2.0)),
                                        border: OutlineInputBorder(),
                                        labelText: 'Password',
                                        labelStyle: TextStyle(color: Colors.white),
                                      ),
                                      style: new TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  RaisedButton(
                                    child: Text('Log In'),
                                    onPressed: (){
                                      validate();
                                    },
                                  )
                                ],
                              ),
                      ),
                )),
          ],
        ),
    )
    ;
  }
  void validate(){
    try {
      _auth.signInWithEmailAndPassword(email: emailEditController.text.toString(), password: pwEditController.text.toString()).then((value){
        Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new Home(),));
      });
    }catch(e){
      print("couldn't be retieved"+e.toString());
    }

  }
}


