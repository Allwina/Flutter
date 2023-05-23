
import 'package:flutter/material.dart';


class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //AppBar
       
        body: Center(
          child: Column(
            children: [
              Container(
                  height:(MediaQuery.of(context).size.height) ,
                 width:(MediaQuery.of(context).size.width),
                
                color: Colors.black,
                child: Image.asset('images/minnalicon.png',
                
               ),
              )
            ],
          ),
        )
        );

  }
}
