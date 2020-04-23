import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class GoogleMapPage extends StatefulWidget {
  GoogleMapPage({Key key, this.title}) : super(key: key);

  final String title;
  //ARROW SPECIFIES or similar to lambda WHICH RETURNS MYHOMEPAGESTATE
  @override
  GoogleMapPageState createState() => GoogleMapPageState();
}


class GoogleMapPageState extends State<GoogleMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _myLocation =
  CameraPosition(target: LatLng(0, 0),);
//THIS CONTROLS THE UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meet Location"),),
      body: Stack(
        children: <Widget>[
          gMaps(context),
          sView(),
        ],

      ),
    );
  }

  Widget gMaps(BuildContext context){
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(target: LatLng(34.053977,-117.8284158),zoom: 10),
          onMapCreated: (GoogleMapController controller){
            _controller.complete(controller);
          },
        markers: {
            unique,SF,CC,miles,zociety
          },
        ),
      );
  }
  Widget sView(){
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: box(0,
                  33.9540686,-118.3811399,'Team Unique'
              )
            ),
            SizedBox(width: 10.0),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: box(1,
                    33.8336192,-118.4211491,'SteerFresh'
                )
            ),
            SizedBox(width: 10.0),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: box(2,
                    33.686502,-117.843429,'Corrupted Concepts'
                )
            ),
            SizedBox(width: 10.0),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: box(3,
                    34.0846531,-118.3646288,'70 Miles/Sat'
                )
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: box(4,
                    33.7335124,-117.836628,'Zociety'
                )
            ),
          ],
        ),
      ),
    );
  }

  Marker unique=Marker(
    markerId: MarkerId('first'),
    position: LatLng(33.9540686,-118.3811399),
    infoWindow: InfoWindow(title: 'Team Unique'),
  );

  Marker SF=Marker(
    markerId: MarkerId('second'),
    position: LatLng(33.8336192,-118.4211491),
    infoWindow: InfoWindow(title: 'Steer Fresh'),
  );
  Marker CC=Marker(
    markerId: MarkerId('third'),
    position: LatLng(33.686502,-117.843429),
    infoWindow: InfoWindow(title: 'Corrupted Concepts'),
  );
  Marker miles=Marker(
    markerId: MarkerId('fourth'),
    position: LatLng(34.0846531,-118.3646288),
    infoWindow: InfoWindow(title: '70 Miles'),
  );
  Marker zociety=Marker(
    markerId: MarkerId('fifth'),
    position: LatLng(33.7335124,-117.836628),
    infoWindow: InfoWindow(title: 'zociety'),
  );
  Widget box(int event_ID, double lat, double log, String name){
    return GestureDetector(
     onTap: (){_returnInfo(lat,log);},
     child: Container(
        child: new FittedBox(
          child: Material(
            color: Colors.white,
            elevation: 12.0,
            borderRadius: BorderRadius.circular(18.0),
            shadowColor: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                type_event(event_ID),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text( 'Team Name: ' + name,
                      style: GoogleFonts.caveat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _returnInfo(double lat, double log){

  }

  Widget type_event(int event_ID){
    if(event_ID == 0){
      return(
          Container(
              height: 160,
              width: 160,
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(21.0),
                child: Image(
                    image: new AssetImage("Background/unique.png"),
                    fit: BoxFit.fill,
                    ),
              ),
          )
      );
    }else if(event_ID == 1){
      return(
          Container(
              height: 160,
              width: 160,
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(21.0),
                child: Image(
                  image: new AssetImage("Background/SteerFresh.png"),
                  fit: BoxFit.fill,
                ),
              ),
            )
          );
    }else if(event_ID==2){
      return(
          Container(
            height: 160,
            width: 160,
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(21.0),
              child: Image(
                image: new AssetImage("Background/CorruptedConcept.png"),
                fit: BoxFit.fill,
              ),
            ),
          )
      );
    }else if(event_ID==3){
      return(
          Container(
            height: 160,
            width: 160,
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(21.0),
              child: Image(
                image: new AssetImage("Background/70miles.png"),
                fit: BoxFit.fill,
              ),
            ),
          )
      );
    }else if(event_ID==4){
      return(
          Container(
            height: 160,
            width: 160,
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(21.0),
              child: Image(
                image: new AssetImage("Background/zociety.png"),
                fit: BoxFit.fill,
              ),
            ),
          )
      );
    }else if(event_ID==5){
      return(
          Container(
            height: 160,
            width: 160,
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(21.0),
              child: Image(
                image: new AssetImage("Background/Streetshabit.png"),
                fit: BoxFit.fill,
              ),
            ),
          )
      );
    }
  }
}