

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internapp/screens/firstscreen.dart';
import 'package:internapp/utility/imagedata.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class provider extends ChangeNotifier{
  images img=new images();
  Future<void> loadAssets() async{
     List resultLIst =List();
    img.image= await MultiImagePicker.pickImages(
      cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
      materialOptions: MaterialOptions(
        actionBarColor: "#abcdef",
        actionBarTitle: "Example App",
        allViewTitle: "All Photos",
        useDetailsView: false,
        selectCircleStrokeColor: "#000000",
      ),
      maxImages: 200,
      enableCamera: true,
      selectedAssets: img.image,



    );
   // img.image.add();
  // Navigator.push(context, MaterialPageRoute(builder: (context)=>firstScreen()));
notifyListeners();
  }

}