import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
              "Product Page",
              style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Home"))
           ],
         ),
       ),
    );
  }
}