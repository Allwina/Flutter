import 'dart:developer';

import 'package:flutter/material.dart';


class MyTf extends StatelessWidget {
  const MyTf({super.key});

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
        body:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(child: Column(children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter user name',
                prefixIcon: Icon(Icons.verified_user),
                suffixIcon: Icon(Icons.verified),
              ),
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter user name',
                prefixText: 'Mr',
                suffixText: 'Hello',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter user name',
                helperText: 'Enter your username or email',
                hintStyle: TextStyle(fontSize: 20, fontStyle:FontStyle.italic,color: Colors.red,),
                labelStyle: TextStyle(fontSize: 20,color: Colors.pinkAccent,)
              ),
            ),
            TextField(
             maxLength: 10,
             obscureText: true,
             keyboardType: TextInputType.number,
              ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.purple,width: 5),
                  
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red,width: 5),
                  
                ),
                label:Text('User Name'),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue,
              ),
            )
             ],
          ),
          ),
        )
        );

  }
}
