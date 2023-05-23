import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

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
       drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Allwina'),
             accountEmail: Text('allwina@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/minnalicon.png'),
              backgroundColor: Colors.black,
            ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              iconColor: Colors.white,
              title: Text('Profile',
              style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.white,
              title: Text('Setting',
              style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              iconColor: Colors.white,
              title: Text('DashBoard',
              style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              iconColor: Colors.white,
              title: Text('Signout',
              style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              onTap: (){},
            )
          ],
        ),
       ),
       body: null,
        );

  }
}