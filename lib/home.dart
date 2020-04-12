import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:midnight_road/Services/user_auth.dart';
import 'screen.dart';

class Home extends StatefulWidget {
  Home({Key key})
      : super(key: key);

  @override
  HomeScreen createState() => HomeScreen();
}
class HomeScreen extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //part of the scaffold properties
        appBar: AppBar(
            title: Text("Events"),
            backgroundColor: Colors.orange,
          ),
        body: CustomScrollView(
            primary: false,
            slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 15, color: Colors.black38),
                        image: new DecorationImage(
                          image: new AssetImage("Background/back.png"),
                        ),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(8)),
                      ),
                      child: SizedBox(
                        height: 3.0,
                        width: 3.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed:(){},
                            backgroundColor: Colors.orange,
                            child: Icon(Icons.add),
                          ),
                        ]),
                      ),
                    ),
                   Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("Background/SteerFresh.png"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("Background/CorruptedConcept.png"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("Background/70miles.png"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("Background/zociety.png"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("Background/Streetshabit.png"),
                    ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
