import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Names(title: 'Flutter Demo Home Page'),
    );
  }
}

class Names extends StatefulWidget {
  const Names({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Names> createState() => _NamesState();
}

class  _NamesState extends State<Names> {
  String message = "Flutter"; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("My app C_E_J_J")),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( message  
            ,  
            style: TextStyle(  
              fontSize: 85,  
              color: Colors.red,  
              fontWeight: FontWeight.w700, 
               
              )
            ),  
            const Text(  
            "Erick Andrade",  
            style: TextStyle(  
              fontSize: 35,  
              color: Colors.blue,  
              fontWeight: FontWeight.w700,  
              )
            ),  
            const Text(  
            "Jhosef Rea",  
            style: TextStyle(  
              fontSize: 35,  
              color: Colors.blue,  
              fontWeight: FontWeight.w700,  
              )
            ),  
            const Text(  
            "Josue Singaña",  
            style: TextStyle(  
              fontSize: 35,  
              color: Colors.blue,  
              fontWeight: FontWeight.w700,  
              )
            ),  
            const Text(  
            "Christian Soledispa",  
            style: TextStyle(  
              fontSize: 35,  
              color: Colors.blue,  
              fontWeight: FontWeight.w700,  
              )
            ),  
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(  
        child: Icon(Icons.navigation),  
        backgroundColor: Colors.green,  
        foregroundColor: Colors.white,  
        onPressed: () => {
          setState((){
              (message == "Flutter")? message = "REACT!!": message = "Flutter";
              /*if(message == "Flutter"){
                message = "REACT!!";
              }else{
                message = "Flutter";
              }*/
          })
        },  
      ),  
      
    );

  }
}

