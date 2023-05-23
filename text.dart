import 'package:flutter/material.dart';


class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //AppBar
        appBar: AppBar(
          title: Text('The Beginining'),
          centerTitle: true,
          backgroundColor: Colors.green,
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
        body:Center(
          child: Text('Learn Flutter',
          style: TextStyle(
            fontSize: 40,
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontStyle:FontStyle.italic,
            letterSpacing: 5,
            wordSpacing: 10,
            backgroundColor: Colors.redAccent,
            
            shadows: [
              Shadow(
              color: Colors.black26,
              offset: Offset(5, 15),
              blurRadius: 5,
            )]
          ),
          ),
          
        )
        );

  }
}