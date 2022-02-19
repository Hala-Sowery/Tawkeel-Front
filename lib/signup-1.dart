import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'before_signup.dart';

class Signup_1 extends StatefulWidget {
  const Signup_1({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}
TextEditingController phoneController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController pswController = TextEditingController();
class _SignupState extends State<Signup_1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment:CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.only(top: width*0.08,bottom: width*0.08,right: width*0.08),
              child: Container(alignment: Alignment.centerRight,
                  child: Text("إنشاء حساب مستخدم",style:
              GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 28,fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.09,bottom: width*0.02),
              child: Text("رقم الهاتف",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),),
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
                      controller: phoneController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.rtl,
                        hintText: ("أدخل رقم الهاتف"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.09,top: width*0.04,bottom: width*0.02),
              child: Text("إسمك الكامل",textAlign: TextAlign.end,style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),),
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
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.rtl,
                        hintText: ("أدخل إسمك الكامل"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.09,top: width*0.04,bottom: width*0.02),
              child: Text("كلمة المرور",textAlign: TextAlign.end,style:GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.08,left: width*0.08),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                color: white1,
                child: Padding(
                  padding: EdgeInsets.only(right:width*0.05),
                  child: TextFormField(
                    obscureText: true,
                      textDirection: TextDirection.rtl,
                      controller: pswController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.rtl,
                        hintText: ("أدخل كلمة المرور"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                      )),
                ),
              ),
            ),
            const SizedBox(height:85 ,),
            Padding(
              padding: EdgeInsets.only(right:width*0.08,left:width*0.08),
              child: SizedBox(
                height: 70,
                width: width,
                child: TextButton(onPressed: (){},child:
                Text("إنشاء حساب",style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(orange))),
              ),
            ),
            const SizedBox(height:25,)
          ],
        ),
      ),
    );
  }
}
