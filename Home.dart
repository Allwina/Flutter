import 'package:flutter/material.dart';


class MyNavName extends StatefulWidget {
  const MyNavName({super.key});

  @override
  State<MyNavName> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyNavName> {
 
  
  @override
  Widget build(BuildContext context) {
       return
    
    
      Scaffold(
          //AppBar
          appBar: AppBar(
           
            title: Text('Named Routes'),
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
     
         body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
              onPressed: (){
                
                Navigator.pushNamed(context,'/Product');
              }, 
              child: Text('Product Page',style: TextStyle(fontSize: 20),
              )
              ),
              ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,'/About');
               
              }, 
              child: Text('About Page',style: TextStyle(fontSize: 20),
              ),
              ),
          ],
          ),
         )


    
          );
        

  }
}