import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key, this.title}) : super(key: key);

  final String title;
  //ARROW SPECIFIES or similar to lambda WHICH RETURNS MYHOMEPAGESTATE
  @override
  _MyRegistrationPageState createState() => _MyRegistrationPageState();
}

class _MyRegistrationPageState extends State<RegistrationPage> {
//THIS CONTROLS THE UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        //creating an array of children
        children: <Widget>[
          //CONTAINER 1
          Container(
            //Creating an expanded to scale the widget's size
            child: Expanded(
              flex: 2,
              //creating a child to import images
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 15, color: Colors.black38),
                  image: new DecorationImage(
                    image: new AssetImage("Background/singup.png"),
                  ),
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(8)),
                ),
              ),
            ),
          ),
          //CONTAINER 2
          Container(
            child: Expanded(
              flex: 3,
              child: Container(


                ),
              ),
            ),
          ]),
    );
  }
}
