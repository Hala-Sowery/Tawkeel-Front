import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawkeel/before_signup.dart';


class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: white1,
        toolbarHeight: height*0.1,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.videocam_sharp),
              onPressed: (){},
              color: orange,
            ),
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: (){},
              color: orange,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
                children :[
                  Padding(
                    padding:  const EdgeInsets.only(right: 20),
                    child: Text("اسم المستخدم",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,fontWeight: FontWeight.bold)),
                  ),
                  CircleAvatar(
                    radius: 28,backgroundColor: Colors.white,
                    child: CircleAvatar(
                      child: Icon(Icons.person,color: orange,),
                      radius: 25, backgroundColor: white2,),
                  ),
                ]),
          ) ,
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          Padding(
          padding: EdgeInsets.only(right:width*0.08,left: width*0.08,bottom: height*0.05),
          child: Container(
            alignment: Alignment.center,
            height: 70,
            color: white1,
            child: Padding(
              padding: EdgeInsets.only(right:width*0.05),
              child: TextFormField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left:width*0.05),
                      child: Icon(Icons.send,color: orange,),
                    ),
                    border: InputBorder.none,
                    hintTextDirection: TextDirection.rtl,
                    hintText: ("الرسالة..."),
                    hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                  )),
            ),
          ),
        ),],
      ),
    );
  }
}
