import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  final String text;
  final int event_ID;
  Event({Key key, this.text, this.event_ID})
      : super(key: key);

  int get ID => event_ID;
  String get event_title => text;
  @override
  EventScreen createState() => EventScreen();
}

class EventScreen extends State<Event> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("event detail")),
      body: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              flex: 2,
              child: type_event(),
            ),
          ),
          Container(
            child: Expanded(
              flex: 3,
              child: Container(
                  child: Text(
                      "here it is",
                  ),
              ),
            ),
          ),
        ],
      ),

    );
  }
  Widget type_event(){
    if(widget.event_ID == 0){
      return(
      Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("Background/unique.png"),
              fit: BoxFit.cover,
            ),
          )
      )
      );
    }else if(widget.event_ID == 1){
      return(
      Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("Background/SteerFresh.png"),
              fit: BoxFit.cover,
            ),
          )
      ));
    }else if(widget.event_ID==2){
      return(
      Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("Background/CorruptedConcept.png"),
              fit: BoxFit.cover,
            ),
          )
      ));
    }else if(widget.event_ID==3){
      return(
      Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("Background/70miles.png"),
              fit: BoxFit.cover,
            ),
          )
      ));
    }else if(widget.event_ID==4){
      return(
      Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("Background/zociety.png"),
              fit: BoxFit.cover,
            ),
          )
      ));
    }else if(widget.event_ID==5){
      return(
      Container(
          padding: EdgeInsets.only(left: 10.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("Background/Streetshabit.png"),
              fit: BoxFit.cover,
            ),
          )
      ));
    }
  }


}