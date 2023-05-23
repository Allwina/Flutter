import 'package:flutter/material.dart';

class MyWid extends StatefulWidget {
  const MyWid({super.key});

  @override
  State<MyWid> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWid> {
  var dsptxt='Hello Worlds';
  var iconclrl=Colors.black;
  var iconclrd=Colors.black;
  void changeState(){
    setState(() {
      dsptxt = 'Hi Allwina';
    });
  }
     void changeStateH(){
    setState(() {
      dsptxt = 'Don\'t you dare to touch me again';
    });
    }
    void changeclrlike(){
      setState(() {
        if(iconclrl == Colors.black){
          iconclrl = Colors.blue;
        }
        else{
          iconclrl = Colors.black;
        }
        
      });
    }
    void changeclrDislike(){
      setState(() {
        if(iconclrd == Colors.black){
          iconclrd = Colors.red;
        }
        else{
          iconclrd = Colors.black;
        }
        
      });
    }
  
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
        body:Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
              Text(
                dsptxt,style: TextStyle(fontSize: 40),
                ),
            
            ElevatedButton(
              onPressed: (){
              changeState();
              }, child: Text(
                'Change Text',style: TextStyle(fontSize: 30),
                ),
                ),
                ElevatedButton(
              onPressed: (){
              changeStateH();
              }, child: Text(
                'Touch me',style: TextStyle(fontSize: 30),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){
                        changeclrlike();
                      },
                       icon: Icon(Icons.thumb_up),
                       iconSize: 40,
                       color: iconclrl,
                       ),
                    IconButton(onPressed: (){
                      changeclrDislike();
                    }, 
                    icon: Icon(Icons.thumb_down),iconSize: 40,color: iconclrd,),
                  ],

                )
          ],
        ),)
        );

  }
}
  
