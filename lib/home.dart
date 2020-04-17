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
                          SizedBox(
                            width: 45.0,
                            height: 45.0,
                            child: FloatingActionButton(
                              heroTag: "button1",
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
                          ),
                        ]),
                      ),
                    ),
                   Container(
                     decoration: BoxDecoration(
                       border: Border.all(width: 15, color: Colors.black38),
                       image: new DecorationImage(
                         image: new AssetImage("Background/SteerFresh.png"),
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
                             SizedBox(
                               width: 45.0,
                               height: 45.0,
                               child: FloatingActionButton(
                                 heroTag: "button2",
                                 onPressed:(){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                         builder: (context) => Event(text: 'SteerFresh',event_ID: 1,location: 'Torrance, CA',description: SF,),
                                       ));
                                 },
                                 backgroundColor: Colors.orange,
                                 child: Icon(Icons.add),
                               ),
                             ),
                           ]),
                     ),
                  ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 15, color: Colors.black38),
                        image: new DecorationImage(
                          image: new AssetImage("Background/CorruptedConcept.png"),
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
                              SizedBox(
                                width: 45.0,
                                height: 45.0,
                                child: FloatingActionButton(
                                  heroTag: "button3",
                                  onPressed:(){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Event(text: 'Corrupted Concepts',event_ID: 2,location: 'Irvine, CA',description: CC,),
                                        ));
                                  },
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 15, color: Colors.black38),
                        image: new DecorationImage(
                          image: new AssetImage("Background/70miles.png"),
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
                              SizedBox(
                                width: 45.0,
                                height: 45.0,
                                child: FloatingActionButton(
                                  heroTag: "button4",
                                  onPressed:(){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Event(text: '70 Miles SAT',event_ID: 3,location: 'Los Angeles, CA',description: Seven,),
                                        ));
                                  },
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 15, color: Colors.black38),
                        image: new DecorationImage(
                          image: new AssetImage("Background/zociety.png"),
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
                              SizedBox(
                                width: 45.0,
                                height: 45.0,
                                child: FloatingActionButton(
                                  heroTag: "button5",
                                  onPressed:(){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Event(text: 'Zociety',event_ID: 4,location: 'Irvine, CA',description: zociety,),
                                        ));
                                  },
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 15, color: Colors.black38),
                        image: new DecorationImage(
                          image: new AssetImage("Background/Streetshabit.png"),
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
                              SizedBox(
                                width: 45.0,
                                height: 45.0,
                                child: FloatingActionButton(
                                  heroTag: "button6",
                                  onPressed:(){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Event(text: 'StreetHabitsCo',event_ID: 5,location: 'El Monte, CA',description: street,),
                                        ));
                                  },
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ]),
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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 0){
        print("home screen");
      }else if(_selectedIndex == 1){
        print("meets");
      }else if(_selectedIndex == 2){
        print("accounts");
      }
    });
  }

  final String unique = "Unique Society \n Prez : @blackdragon_3.7 \n Want to join ? we are now recruiting hmu for info 💯🏎 "+
      "\n Sponsor: \n@selfcaredetailing_ \n@aaservices4you \n@tigg_vhr";
  final String SF = " Steer Fresh \n Weekly Automotive Gatherings Since 2015 // Original Content " +
      "#Southbaybangers \n streetfuelcompany.com";
  final String CC = "CCONCEPTS \n 🏆Where Legends come to chill🏆"+
  "🔘10k Giveaway \n" + "🔘weekly event WED/SUN \n" + "#corruptedconcepts / #cconcepts / #ccmeets \n" +
  "www.corruptedconcepts.info";
  final String Seven = "About: \n" + "What started at 70 Miles turned into a group of friends looking to travel the roads less traveled. \n"+
      "Come drive with us sometime!";
  final String zociety = "ZOCIETY™ \n" + "We Are Enthu•Z•Asts, United We Are A ZOCIETY! \n" + "Worldwide Z Family🌍 \n"+
  "#ZOCIETY \n" + "↘Join The ZOCIETY↙ \n" + "www.ZOCIETY.org \n";
  final String street = "TheStreetHabitsCo™ \n" + "🏆NOW RECRUITING SOLO RIDERS🏆 \n" +  "- SoCal/NorCal Based📍 \n" + "- SHOW / 1320 / TRACK🏎 \n" +
      "- UpComing Shows🎢: \n" + "June 20th, 2020 \n" + "SpringBlastAutofest \n" + "↘️Buy Tickets↙️ \n" + "www.thestreethabitsco.shop";
}
