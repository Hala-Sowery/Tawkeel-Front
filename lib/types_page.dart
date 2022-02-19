import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'before_signup.dart';

class TypesPage extends StatelessWidget {
  const TypesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.13,top: width*0.08,bottom: width*0.08),
              child: Text("مرحباً",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 28,fontWeight: FontWeight.bold),),),
            Padding(
              padding:  EdgeInsets.only(right:width*0.13,bottom: width*0.04),
              child: Text("اختر نوع القضاء",style:GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 12,fontWeight: FontWeight.bold),),),
            GridView.count(
              shrinkWrap: true,
          padding: EdgeInsets.only(right: width*0.125,left: width*0.125),
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(4, (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(child: Container(child: Text(" قضاء ${index==0?"ديني":index==1?"نظامي":index==2?"خاص":"إداري"}",
                  style:GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),alignment:Alignment.center,
                  height: height*0.25,width: width*0.35,color: orange,),borderRadius: BorderRadius.circular(10),),
              ),
              //   ),
            );
          }),
      )],
        ),
      ),

    );
  }
}
