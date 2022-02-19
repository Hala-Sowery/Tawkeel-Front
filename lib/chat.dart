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
      appBar: AppBar(backgroundColor: white1,elevation: 0,
        toolbarHeight: 80,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(
            children :[
            Padding(
              padding:  const EdgeInsets.only(right: 10),
              child: Text("اسم المستخدم",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,fontWeight: FontWeight.bold)),
            ),
              CircleAvatar(
              radius: 28,backgroundColor: Colors.white,
                child: CircleAvatar(
                  child: Icon(Icons.person,color: orange,),
                  radius: 25, backgroundColor: white2,),
              ),
       ]),
        ) ,],
        title: Padding(
          padding:  const EdgeInsets.only(left: 5),
          child: Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.videocam_sharp),color: orange,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.call),color: orange,),
          ],),
        ),
      ),


    );
  }
}
