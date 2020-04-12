import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key, this.title}) : super(key: key);

  final String title;
  //ARROW SPECIFIES or similar to lambda WHICH RETURNS MYHOMEPAGESTATE
  @override
  _MyRegistrationPageState createState() => _MyRegistrationPageState();
}


class _MyRegistrationPageState extends State<RegistrationPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference ref = FirebaseDatabase.instance.reference();
  final formKey = GlobalKey<FormState>();
  String email, password;
//THIS CONTROLS THE UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(widget.title),
      ),
      body: Column(
        //creating an array of children
        children: <Widget>[
          //CONTAINER 1
          Container(
            //Creating an expanded to scale the widget's size
            child: Expanded(
              flex: 4,
              //creating a child to import images
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 15, color: Colors.black38),
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage("Background/signup.png"),
                  ),
                ),
              ),
            ),
          ),
          //CONTAINER 2
          Container(
            child: Expanded(
              flex: 2,
              child: Container(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email'
                          ),
                          validator: (input) => !input.contains('@') ? "Not a valid email address" : null,
                          onSaved: (input) => email = input,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password'
                            ),
                            validator: (input) => input.length < 6 ? "You need a password that's longer than 6 characters" : null,
                            onSaved: (input) => password = input,
                            obscureText: true,
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                               padding: const EdgeInsets.all(9.0),
                               child: RaisedButton(
                                 onPressed: submit,
                                 child: Text('Submit'),
                               )
                              )
                            ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
  void submit(){
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      _auth.createUserWithEmailAndPassword(email: email, password: password)
      .then((value){
        //creating a user and storing in the database with the UID
            ref.child("Users" + new DateTime.now().millisecondsSinceEpoch.toString()).set(
                {
                  "Email": email,
                  "Password": password,
                }
            );
      })
      .catchError((e) {
          print("Failed." + e.toString());
      });
    }
  }
}
