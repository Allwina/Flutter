import 'package:flutter/material.dart';


class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyTabbar> {
  int indexNum = 0;
  List tabWidgets = [
    Text("Home",style: TextStyle(fontSize: 40)),
     Text("Profile",style: TextStyle(fontSize: 40)),
      Text("Dashboard",style: TextStyle(fontSize: 40)),
       Text("Settings",style: TextStyle(fontSize: 40)),

  ];
  
  @override
  Widget build(BuildContext context) {
   
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
          //AppBar
          appBar: AppBar(
            bottom: TabBar(tabs: const [
              // Tab(text: "Chats"),
              // Tab(text: "Status"),
              // Tab(text: "Calls"),

              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.share),),
              Tab(icon: Icon(Icons.settings),),

            ],
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 8,
            ),
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
     
         body:TabBarView(children: const [
          Text("Chats Page",style: TextStyle(fontSize: 30),),
          Text("Status Page",style: TextStyle(fontSize: 30),),
          Text("Calls Page",style: TextStyle(fontSize: 30),),
         ],)
          ),
    );

  }
}