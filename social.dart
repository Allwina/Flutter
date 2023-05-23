
import 'package:flutter/material.dart';


class MySocial extends StatelessWidget {
  const MySocial({super.key});

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
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [ListTile(
                    title: Text('Shah Rukh'),
                    subtitle: Text('23 min ago'),
                    leading: CircleAvatar(backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwallpaperaccess.com%2Fshahrukh-khan-hd&psig=AOvVaw39xzHEJJPJyrxFCtsXSRbR&ust=1684657203594000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCOCl8KO7g_8CFQAAAAAdAAAAABAJ'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('Cute Puppy'),
                  ),
                  Image.asset('images/minnalicon.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down)),
            
                    ],
                  )
                  ],
                ),
              ),
            )
          ],
        )
        );

  }
}
