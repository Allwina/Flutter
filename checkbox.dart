import 'package:flutter/material.dart';


class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyCheckBox> {
  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              tristate: true,
              value: isChecked,
               onChanged: (val){
              setState((){
                isChecked = val;

              });
            }),
             Checkbox(
              activeColor: Colors.yellow,
              checkColor: Colors.black,
              value: isChecked2,
               onChanged: (val){
              setState((){
                isChecked2 = val;

              });
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                title: Text("Send Notification",style: TextStyle(color: Colors.white),),
                subtitle: Text("Turn on or off notification"),
                tileColor: Colors.lightBlue,
                value: isChecked3,
                 onChanged: (val){
                  setState(() {
                    isChecked3=val;
                  });
                  
                 }),
            ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CheckboxListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                             title: Text("Send Notification",style: TextStyle(color: Colors.white),),
                             subtitle: Text("Turn on or off notification"),
                             tileColor: Colors.red,
                             value: isChecked4,
                 onChanged: (val){
                  setState(() {
                    isChecked4=val;
                  });
                  
                 }),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                             title: Text("Send Notification",style: TextStyle(color: Colors.white),),
                             subtitle: Text("Turn on or off notification"),
                             tileColor: Colors.green,
                             value: isChecked5,
                 onChanged: (val){
                  setState(() {
                    isChecked5=val;
                  });
                  
                 }),
               ),

          ],
        ),
       ) ,
        );

  }
}