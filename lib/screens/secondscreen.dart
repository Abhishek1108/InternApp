import 'package:flutter/material.dart';
import 'package:internapp/screens/firstscreen.dart';
import 'package:internapp/utility/provider.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:provider/provider.dart';
class secondscreen extends StatefulWidget {
  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  _getImages(){
    print("%%%%%%%%%%%%%%%");
    provider pro=Provider.of<provider>(context,listen: false);
    pro.loadAssets();
  // Navigator.push(context, MaterialPageRoute(builder: (context)=>firstScreen()));
  }


  @override
  Widget build(BuildContext context) {
    print("##########################");
    return Scaffold(
      appBar: AppBar(
        title: Text("Select method to add image "),
      ),
      body: SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.camera_alt,size: 30,),

              onPressed: (){
               _getImages();
              },
            ),
            IconButton(
              icon: Icon(Icons.perm_media,size: 30,),

              onPressed: (){
                _getImages();
              },
            ),
            IconButton(
              icon: Icon(Icons.cloud_upload,size: 30,),
              onPressed: (){

              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_back,size: 30,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>firstScreen()));
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}
