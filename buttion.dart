import 'dart:developer';

import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  const MyButton({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            TextButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                  fontSize: 30,
                )),
                foregroundColor:MaterialStateProperty.all(Colors.greenAccent)
                 ),

              onPressed: () {
              log('Clicked');
            },
             child: Text('Text Button')),

             TextButton.icon(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                  fontSize: 30,
                )),
                foregroundColor:MaterialStateProperty.all(Colors.greenAccent)
                 ),

              onLongPress: () {
              log('Long Pressed');
            },
            icon: Icon(Icons.home),
            label: Text('Home'), onPressed: () { 
              log('clicked');
             },
            ),
             //Elevated Button
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                foregroundColor: MaterialStateProperty.all(Colors.amber),
                backgroundColor: MaterialStateProperty.all(Colors.green),
              //  minimumSize: MaterialStateProperty.all(Size(50, 40)),
                 textStyle:MaterialStateProperty.all( TextStyle(fontSize: 30),
                )
              ),
              onPressed: (){log('clicked');}, 
              onLongPress: (){log('long Press');},
              child: Text('Sign In')
              ),

              //outline button
              OutlinedButton(
                
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  side: MaterialStateProperty.all(BorderSide(color: Colors.red,width:2 )),
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                  minimumSize: MaterialStateProperty.all(
                    Size(50, 0)),
                     textStyle:MaterialStateProperty.all( TextStyle(fontSize: 30),),
                    
                  ),
                onPressed: (){},
                 child: Text('Sign Up')
                )
          ],
          ),
        )
        );

  }
}
