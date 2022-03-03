import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'before_signup.dart';


class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 60,),
          Padding(
            padding: EdgeInsets.only(top: width*0.08,bottom: width*0.08,right: width*0.08),
            child: Container(alignment: Alignment.centerRight,
              child: Text("دفع ثمن الإستشارة",style:
              GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 28,fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right:width*0.08,top: width*0.04,bottom: width*0.02),
            child: Text("رقم البطاقة",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),),
          Padding(
            padding: EdgeInsets.only(right:width*0.08,left: width*0.08),
            child: Container(
              alignment: Alignment.center,
              height: 70,
              color: white1,
              child: Padding(
                padding: EdgeInsets.only(right:width*0.05),
                child: TextFormField(
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintTextDirection: TextDirection.rtl,
                      hintText: ("xxxx xxxx xxxx xxxx"),
                      hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                    )),
              ),
            ),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Padding(
                padding:EdgeInsets.only(top: width*0.04,bottom: width*0.02,left: width*0.08),
                child: Container(child: Text("تاريخ الإنتهاء",textAlign:TextAlign.end,style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),
                width: width*0.38,alignment: Alignment.centerRight),
              ),
              Padding(
                padding: EdgeInsets.only(right:width*0.08,top: width*0.04,bottom: width*0.02),
                child: Container(child: Text("كلمة المرور",textAlign:TextAlign.end,style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),
                  width: width*0.38,alignment: Alignment.centerRight),
              ),],
          ),
          Padding(
            padding: EdgeInsets.only(right:width*0.08,left: width*0.08),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right:width*0.08),
                  child: Container(
                    width: width*0.38,
                    alignment: Alignment.center,
                    height: 70,
                    color: white1,
                    child: Padding(
                      padding: EdgeInsets.only(right:width*0.05),
                      child: TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintTextDirection: TextDirection.rtl,
                            hintText: ("MM/YY"),
                            hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                          )),
                    ),

                  ),
                ),
                Container(
                  width: width*0.38,
                  alignment: Alignment.center,
                  height: 70,
                  color: white1,
                  child: Padding(
                    padding: EdgeInsets.only(right:width*0.05),
                    child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                          hintText: ("xxx"),
                          hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                        )),
                  ),

                ),
              ],
            ),
          ),
     ],
      ),
    );
  }
}
