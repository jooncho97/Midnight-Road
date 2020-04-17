import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Event extends StatefulWidget {
  final String text;
  final String location;
  final String description;
  final int event_ID;
  Event({Key key, this.text, this.location,this.description, this.event_ID})
      : super(key: key);

  int get ID => event_ID;
  String get event_title => text;
  String get location_title => location;
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
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Divider(height: 25),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.flag),
                              ),
                            ),
                            TextSpan(text:'Team Name: ' + widget.text,
                                style: GoogleFonts.caveat(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                      Divider(height: 25),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.place),
                              ),
                            ),
                            TextSpan(text:'Location: ' + widget.location,
                              style: GoogleFonts.caveat(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w400,
                              )),
                          ],
                        ),
                      ),
                      Divider(height: 25),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.comment),
                              ),
                            ),
                            TextSpan(text:'Description: ' + widget.description,
                                style: GoogleFonts.caveat(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                      //MAYBE ADD IMAGES HERE FOR INDIVIDUAL TEAM
                    ],
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