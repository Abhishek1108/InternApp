

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internapp/screens/secondscreen.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import 'package:provider/provider.dart';
import 'package:internapp/utility/provider.dart';


class firstScreen extends StatefulWidget {

  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    var media = MediaQuery.of(context).size;
   return Scaffold(
     body: SafeArea(
       child: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             expandedHeight: media.height*0.15,
             //  pinned: true,
             // floating: true,
             backgroundColor: Colors.black,
             leading: IconButton(
               icon: Icon(Icons.add,color: Colors.blue,size: 30,),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()));
               },
             ),
             flexibleSpace: Padding(
               padding: const EdgeInsets.only(top: 45),
               child: Text("Albums",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
             ),

           ),

           SliverToBoxAdapter(
             child: Container(
               color: Colors.black,
               child: Text("My Albums ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.normal),),

             ),
           ),
//
           Consumer<provider>(
             builder:(context,provdobj,child) {
             return  SliverToBoxAdapter(
                 child: Container(
                   color: Colors.black,
                   height: 130,
                   child: ListView.builder(itemCount:provdobj.img.image.length,
                   padding: EdgeInsets.only(left:10),
                   scrollDirection: Axis.horizontal,
                   itemBuilder:(context,index){
                     Asset asset = provdobj.img.image[index];
                     if(index==null){
                       return Center(
                         child: CircularProgressIndicator(),
                       );
                     }
                     else {
                       return AssetThumb(
                         asset: asset,
                         width: 100,
                         height: 100,

                       );
                     }
                   },
                   ),
                 ),

               );
             }
           ),
           SliverFillRemaining(
             child:Container(
               color: Colors.black,
             ),
           )


         ],
       ),
     ),
   );

  }



  }


