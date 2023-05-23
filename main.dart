import 'package:flutter/material.dart';
import 'package:mytrial/widgets/CircleAvatar.dart';
import 'package:mytrial/widgets/checkbox.dart';
import 'package:mytrial/widgets/drawer.dart';
import 'package:mytrial/widgets/image.dart';
import 'package:mytrial/widgets/TextField.dart';
import 'package:mytrial/widgets/buttion.dart';
import 'package:mytrial/widgets/container.dart';
import 'package:mytrial/widgets/Card.dart';
import 'package:mytrial/widgets/rowcolomn.dart';
import 'package:mytrial/widgets/social.dart';
import 'package:mytrial/widgets/text.dart';
import 'widgets/stateful.dart';
void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'The Begining',
      home: MyCheckBox(),
    );
  }
}