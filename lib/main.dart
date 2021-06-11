import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: Text('First Screen'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                //Container Color
                child: Text(
                  'Hi',
                  style: TextStyle(fontSize: 40),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Container(
                //Container Shape
                child: Text(
                  'Hi',
                  style: TextStyle(fontSize: 40),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                //Container with Shadow
                child: Text('Hi', style: TextStyle(fontSize: 40)),
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 6),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
              Container(
                //Container with border
                child: Text(
                  'Hi',
                  style: TextStyle(fontSize: 40),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.green, width: 3),
                ),
              ),
              Container(
                //Container With Border Shape
                child: Text(
                  'Hi',
                  style: TextStyle(fontSize: 40),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.green, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(30),
                  child: Text('Ini Padding')), //this is how to use padding
              // Center(
              //   child: Text('Text berada di tengah'),
              // ),
            ],
          ),
        ));
  }
}

// Container( //container
//   child: Text('Hi', style: TextStyle(fontSize: 40)),
//   color: Colors.blue,
// )

// Container( //container width&height
//   child: Text('Hi', style: TextStyle(fontSize: 40),),
//   color: Colors.blue,
//   width: 200,
//   height: 100,
// )

// Container( //Padding merupakan jarak antara konten (child) dengan Container)
//  child: Text('Hi', style: TextStyle(fontSize: 40),),
//  color: Colors.blue,
//  padding: EdgeInsets.all(10),
// )

//  Container( //Margin merupakan jarak antara Container dengan bagian luar container.
//  child: Text('Hi', style: TextStyle(fontSize: 40),),
//  color: Colors.blue,
//  margin: EdgeInsets.all(10),
// )
