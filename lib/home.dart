import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(
    MainScreen()
  );
}
class MainScreen extends StatelessWidget {
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
                        borderRadius: const BorderRadius.all(const Radius.circular(8)),
                      ),
                    padding: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage("Background/unique.png"),
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
