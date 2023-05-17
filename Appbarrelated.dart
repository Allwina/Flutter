import 'package:flutter/material.dart';
void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'The Begining',
      home: Scaffold(
        //AppBar
        appBar: AppBar(
          title: Text('The Beginining'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          //leading:lft side prop
          leading: Icon(Icons.menu),
          //actions:icons on right side
          // actions: [Icon(Icons.search)],
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_rounded))
          ],
        //SHAPE OF APPBAR
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        //elevation:shadow effect
        elevation: 30.5,

        ),

        body:Center(child:Text('Hello World',
        style: TextStyle(fontSize: 50,
        ),
        ),
        ),
        
      ),
    );
  }
}
