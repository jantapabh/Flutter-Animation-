// Fade in and Fade out Animation

import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     title: Animation,
     home: Scaffold(
       appBar: AppBar(title: Text("Animation"),),
       body: FadeInDem(),
     ),

   );
  }
}

class FadeInDemo extends StatefulWidget{
  FadeInDemoState createState() => FadeInDemoState();

}

class FadeInDemoState extends State<FadeInDemo>{
  var opacity = 0.0;
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Image.asset('assets/images/pic1.jpg'),
        MaterialButton(
          child: Text("Show details",style: TextStyle(color: Colors.amber)),
          onPressed: () => setState(() {
            opacity = 1;
          }),
        ),
        AnimatedOpacity(
          duration: Duration(seconds: 2),
          child: Column(
            children: <Widget>[
              Text("Type: Owl"),
              Text("Food Small mammals, insect")
            ],
          ),
          opacity: opacity,
        )
      ],
    );
  }



}