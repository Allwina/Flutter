import 'package:flutter/material.dart';


class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyBottomNav> {
  int indexNum = 0;
  List tabWidgets = [
    Text("Home",style: TextStyle(fontSize: 40)),
     Text("Profile",style: TextStyle(fontSize: 40)),
      Text("Dashboard",style: TextStyle(fontSize: 40)),
       Text("Settings",style: TextStyle(fontSize: 40)),

  ];
  
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
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.blue),

         BottomNavigationBarItem(icon: Icon(Icons.person),
        label: "Profile",
        backgroundColor: Colors.blue),

         BottomNavigationBarItem(icon: Icon(Icons.dashboard),
        label: "Dashboard",
        backgroundColor: Colors.blue),

         BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: "Settings",
        backgroundColor: Colors.blue),
      ],
      iconSize: 30,
      //selectedFontSize: 30,
      //showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: indexNum,
      onTap: (int index){
        setState(() {
          indexNum = index;
          
        });
      },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){}, label: Text("Share"),
        icon: Icon(Icons.share),
        ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   foregroundColor: Colors.red,
      //   backgroundColor: Colors.orange,
      //   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //   //mini: true,
      //   tooltip: "Share file",
      //   child: Icon(Icons.share),
      //   ),
       body:Center(
        child:tabWidgets.elementAt(indexNum) ,
       )
       
        );

  }
}