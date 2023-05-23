
import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        //AppBar
       
        body:ListView(
          children: [Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              shadowColor: Colors.green,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(title: Text('CBI 5'),
                  subtitle: Text('Starring mamoty'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  ListTile(title: Text('Dil Se'),
                  subtitle: Text('Starring SRK'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              shadowColor: Colors.green,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(title: Text('Roja'),
                  subtitle: Text('Starring Aravind Swamy'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  ListTile(title: Text('RHTDM'),
                  subtitle: Text('Starring Maddy'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              shadowColor: Colors.green,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(title: Text('PS 1'),
                  subtitle: Text('Starring Vikram'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  ListTile(title: Text('Alaipayuthey'),
                  subtitle: Text('Starring Maddy'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              shadowColor: Colors.green,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(title: Text('Vikram'),
                  subtitle: Text('Starring Kamal Hassan'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  ListTile(title: Text('Vaarnam Ayiram'),
                  subtitle: Text('Starring Suriya'),
                  textColor: Colors.red,
                  leading: Icon(Icons.movie),
                  iconColor: Colors.purple,
                  trailing: Icon(Icons.more_horiz),
                  onTap: (){},
                  )
                ],
              ),
            ),
          ),
          ],
        )
        );

  }
}
