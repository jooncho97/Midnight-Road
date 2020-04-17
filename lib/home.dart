import 'package:flutter/material.dart';
import 'package:midnight_road/event_detail.dart';
class Home extends StatefulWidget {
  Home({Key key})
      : super(key: key);

  @override
  HomeScreen createState() => HomeScreen();
}
class HomeScreen extends State<Home> {
  @override
  int _selectedIndex = 0;
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
                          image: new AssetImage("Background/unique.png"),
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
                            onPressed:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Event(text: 'Unique',event_ID: 0,location: 'Inglewood, CA',description: unique,),
                                  ));
                            },
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
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car),
              title: Text('Meets'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
  final String unique = "Unique Society \n Prez : @blackdragon_3.7 \n Want to join ? we are now recruiting hmu for info 💯🏎 "+
      "\n Sponsor: \n@selfcaredetailing_ \n@aaservices4you \n@tigg_vhr";
  final String SF = " ";
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 1){
        print("");
      }
    });
  }
}
