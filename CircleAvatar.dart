
import 'package:flutter/material.dart';


class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({super.key});

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
       
        body:Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.green,
                    child: Text('Sign In',style: TextStyle(fontSize: 30),
                    ),
                    foregroundColor: Colors.yellow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 90,
                  child: Icon(Icons.verified_user,size: 50,),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('images/minnalicon.png'),
                  
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 150,
                  foregroundImage: NetworkImage('https://www.google.com/search?q=minnal+murali+logo&tbm=isch&ved=2ahUKEwjG8q_SuIP_AhVkk9gFHUFtAiQQ2-cCegQIABAA&oq=minna&gs_lcp=CgNpbWcQARgCMgoIABCKBRCxAxBDMgUIABCABDIHCAAQigUQQzIFCAAQgAQyBQgAEIAEMgcIABCKBRBDMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDoLCAAQgAQQsQMQgwE6CAgAEIAEELEDULQQWK8pYIE4aAJwAHgDgAFziAHODJIBBDYuMTCYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABAMABAQ&sclient=img&ei=8n9oZMaxBuSm4t4PwdqJoAI&bih=714&biw=1536&rlz=1C1RXQR_enIN956IN956#imgrc=9wzSG7EsSjLfCM'),
                  
                ),
              )
            ],
          ),
        )
        );

  }
}
