import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("SlamIt!"),
      ),
      body: Center(
        child: CardContainer(),
      ),
    );
  }
}

class CardContainer extends StatefulWidget {
  @override
  _CardContainerState createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Positioned.fill(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 45, 30, 45),
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: <Widget>[],
                    ),
                  )))
        ],
      ),
    );
  }
}
