import 'package:flutter/material.dart';
import 'package:midnight_road/sign-in.dart';
import 'screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midnight Road',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //SPECIFIES WHICH PAGE TO GO FIRST
      home: MyHomePage(title: 'Midnight Road'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  //ARROW SPECIFIES or similar to lambda WHICH RETURNS MYHOMEPAGESTATE
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

//THIS CONTROLS THE UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Background/back.png"), fit: BoxFit.cover)),
        margin: new EdgeInsets.all(0.0),
      child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              Container(
              child: new FlatButton(
                child: new Container(
                  padding: new EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.all(
                    new Radius.elliptical(40.0,50.0)
                  ),
                    border: new Border.all(
                    color: Colors.orangeAccent,
                    ),
                  ),
                    child: new Text('Log In',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black54),
                    ),
                  ),
                  onPressed:(){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new SignInPage(title: 'Sign In Page')),
                  );
                }),
              ),
            SizedBox(height: 10),
            Container(
              child: new FlatButton(
                  child: new Container(
                    padding: new EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                          new Radius.elliptical(40.0,50.0)
                      ),
                      border: new Border.all(
                        color: Colors.orangeAccent,
                      ),
                    ),
                    child: new Text('Create an Account',
                      style: new TextStyle(fontSize: 20.0, color: Colors.black54),
                    ),
                  ),
                  onPressed:(){
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new RegistrationPage(title: 'registration page')),
                    );
                  }),
            ),
            SizedBox(height: 90),
            ]
            ),
        ),
      );
  }
}
