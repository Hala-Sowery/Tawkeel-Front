import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'before_signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SinInState createState() => _SinInState();
}
TextEditingController phoneController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController pswController = TextEditingController();

class _SinInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment:CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 60,),
            Padding(
              padding:  EdgeInsets.only(right:width*0.09,top: width*0.08,bottom: width*0.08),
              child: Text("تسجيل الدخول",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 28,fontWeight: FontWeight.bold),),),
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
              child: Text("كلمة المرور",textAlign: TextAlign.end,style:GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 15,),),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.08,left: width*0.08,),
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
                        hintText: ("أدخل كلمة المرور"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(color: Colors.black26,fontSize: 15),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.08,left:width*0.08,top: height*0.30),
              child: SizedBox(
                height: 70,
                width: width,
                child: TextButton(onPressed: (){},child: const Text("تسجيل الدخول",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(orange))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
