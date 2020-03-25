import 'package:flutter/material.dart';
import 'package:screen/yoursradial_progress.dart';
import 'package:screen/others_radial_progress.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new ChallengeScreen(title: 'Challenge' ),
//     );
//   }
// }

class ChallengeScreen extends StatefulWidget {
  ChallengeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChallengeScreenState createState() => new _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true, backgroundColor: Colors.transparent, elevation: 0,
        leading: new IconButton(
               icon: new Icon(Icons.arrow_back, color: Colors.black),
               onPressed: () => Navigator.of(context).pop(),),

        title: new Text(widget.title, style: TextStyle(color: Colors.black),),
        
      ),
      body: _buildBody(context),
      );
  }


    Widget _buildBody(BuildContext context) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column( children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Column(children: <Widget>[
                Container( 
                  decoration: BoxDecoration(color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 3,color: Colors.purple,style: BorderStyle.solid)
                  ),
                  
                  height: 170,
                  width: 400,
                  
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            right: 20.0,
                            top: 20.0,
                            // child: _buildProgressIndicator(),
                            child: RadialProgress(),

                          ),
                        ListTile(
                          title: Text("Your steps", style: TextStyle(color: Colors.white, fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 50,),
                          child: Text("Distance 1.3 km", style: TextStyle(color: Colors.grey, fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 80,),
                          child: Text("Calories 42", style: TextStyle(color: Colors.grey, fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 110,),
                          child: Text("Pace 25.32/km (average)", style: TextStyle(color: Colors.grey, fontSize: 15),),
                        ),
                      ],
                    
                  
                  )
                ),
                Container(
                  decoration: BoxDecoration( color: Colors.purple[900],
                  // decoration: BoxDecoration(color: Colors.purple[900],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)
                      ),
                    border: Border.all(width: 3,color: Colors.purple[900],style: BorderStyle.solid)
                  ),
                  // color: Colors.purple[900],
                  height: 40,
                  width: 400,
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 20.0,
                            top: 5.0,
                            child: new Icon(Icons.star, color: Colors.yellow),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 10),
                          child: Text("You are just 120 steps away from others."),
                        ),
                      ],
                  )
                  ),
                const SizedBox(height: 10.0,),
                Container( 
                  decoration: BoxDecoration(color: Colors.teal[500],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 3,color: Colors.teal[500],style: BorderStyle.solid)
                  ),
                  
                  height: 180,
                  width: 400,
                  child: Stack(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Positioned(
                            right: 20.0,
                            top: 20.0,
                            child: RadialProgress1(),
                            

                          ),
                      ListTile(
                        title: Text("Others steps", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 50,),
                        child: Text("Distance 4.3 km", style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 80,),
                        child: Text("Calories 47", style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 110,),
                        child: Text("Pace 27.32/km (average)", style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 20.0,),
                Container(
                  color: Colors.transparent,
                  height: 200,
                  width: 400,
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 5.0,
                            top: 9.0,
                            child: new Icon(Icons.star, color: Colors.yellow),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 10),
                          child: Text("How much physical activity do you need?", 
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(left: 45, top: 70),
                        child: Text("Move More, Sit Less", style: TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, top: 100,),
                        child: Text("Get up and move throughout the day. Any\nactivity is better than none. Even light-\nintensity can offset the serious health risks of\n being sedentary", style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ),
                        
                        
                      ],
                  ),
                  ),
                  
                
              ],
              ))
            ],
          )


        ],)
      );

    }
}
