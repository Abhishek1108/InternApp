import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internapp/screens/firstscreen.dart';
import 'package:internapp/screens/secondscreen.dart';
import 'package:internapp/utility/provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context)=>provider(),
    child: MaterialApp(
      title: "Intern App",
      home: firstScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}