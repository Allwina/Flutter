import 'package:flutter/material.dart';


class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyRadioButton> {
  String? gender;
  
  @override
  Widget build(BuildContext context) {
   
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
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
         
          //elevation:shadow effect
          elevation: 30.5,
    
          ),
     
         body:Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.amberAccent,
              child: Column(
                children: [
                  Text("Select your gender",style: TextStyle(fontSize: 20),),
                  ListTile(
                    title: Text("Male"),
                    leading: Radio(value: 'Male', groupValue: gender, onChanged: (String? value){
                      setState(() {
                        gender = value;
                      });
                    }),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(value: 'Female', groupValue: gender, onChanged: (String? value){
                      setState(() {
                        gender = value;
                      });
                    }),
                  ),
                  ListTile(
                    title: Text("Others"),
                    leading: Radio(value: 'Others', groupValue: gender, onChanged: (String? value){
                      setState(() {
                        gender = value;
                      });
                    }),
                  )
                ],
              ),
              ),
              // Column(children: [Text('Marital Status',style: TextStyle(fontSize: 20),)],)
            

    
          ),
         ],
         )
          ),
    );

  }
}