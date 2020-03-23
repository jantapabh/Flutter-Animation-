// Fade in and Fade out Animation
// กดปุ่มแล้วแสดงคำอธิบายรูปภาพ
import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     title: "Animation",
     home: Scaffold(
       appBar: AppBar(title: Text("Animation"),),
       body: FadeInDemo(),
       //Show FadeInDemo Class
     ),

   );
  }
}

// FadeInDemo class create FadeInDemoState and extends StatefulWidget
class FadeInDemo extends StatefulWidget{
  FadeInDemoState createState() => FadeInDemoState();
  //FadeInDemoState createState () => FadeInDemoState();
}

class FadeInDemoState extends State<FadeInDemo>{
  var opacity = 0.0;
  @override

   //Display Main State
  // onPressed สำหนับกดปุ๋มแล้สแวดงผลกาทำงาน
  //MaterialButton with Onpressed use couple


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