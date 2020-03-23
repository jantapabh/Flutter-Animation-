//// Fade in and Fade out Animation
//// กดปุ่มแล้วแสดงคำอธิบายรูปภาพ
//import'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//
//   return MaterialApp(
//     title: "Animation",
//     home: Scaffold(
//       appBar: AppBar(title: Text("Animation"),),
//       body: FadeInDemo(),
//       //Show FadeInDemo Class
//     ),
//
//   );
//  }
//}
//
//// FadeInDemo class create FadeInDemoState and extends StatefulWidget
//class FadeInDemo extends StatefulWidget{
//  FadeInDemoState createState() => FadeInDemoState();
//  //FadeInDemoState createState () => FadeInDemoState();
//}
//
//class FadeInDemoState extends State<FadeInDemo>{
//  var opacity = 0.0;
//  @override
//
//   //Display Main State
//  // onPressed สำหนับกดปุ๋มแล้สแวดงผลกาทำงาน
//  //MaterialButton with Onpressed use couple
//
//
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Column(
//      children: <Widget>[
//        Image.asset('assets/images/pic1.jpg'),
//        MaterialButton(
//          child: Text("Show details",style: TextStyle(color: Colors.amber)),
//          onPressed: () => setState(() {
//            opacity = 1;
//          }),
//        ),
//        AnimatedOpacity(
//          duration: Duration(seconds: 2),
//          child: Column(
//            children: <Widget>[
//              Text("Type: Owl"),
//              Text("Food Small mammals, insect")
//            ],
//          ),
//          opacity: opacity,
//        )
//      ],
//    );
//  }
//
//}

//ShapeShiht

import 'dart:math';
import 'package:flutter/material.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 64;
}

double randomMargin() {
  return Random().nextDouble() * 64;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Test Animation",
        home: AnimatedContainerDemo());
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  AnimatedContainerDemoState createState() => AnimatedContainerDemoState();
}

class AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  var borderRadius = randomBorderRadius();
  var margin = randomMargin();

  void change() {
    setState(() {
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                margin: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(borderRadius)),
              ),
            ),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => change())
          ],
        ),
      ),
    );
  }
}