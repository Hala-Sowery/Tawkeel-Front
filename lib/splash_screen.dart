import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color orange = const Color.fromRGBO(246, 146, 121, 1);
Color white1 = const Color.fromRGBO(247, 247, 247, 1);
Color white2 = const Color.fromRGBO(240, 240, 240, 1);

class SplashScreen  extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    const Before_signup()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          // body: Image.network("https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg"),
        body: Container(decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/assets/t.png"),fit: BoxFit.cover)
        ),
        ));
  }
}

class Before_signup extends StatelessWidget{
  const Before_signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment:CrossAxisAlignment.end,
          children: [
            SizedBox(height: height*0.15,),
            Padding(
              padding:  EdgeInsets.only(right:width*0.1),
              child: Text("نوع الحساب",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.06,left: width*0.06,top: width*0.1),
              child: Container(height: 70,color: white1,
                alignment: Alignment.center,
                child: ListTile(trailing: Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: Text("حساب محامي", style:GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 17,fontWeight: FontWeight.bold),),
                ),
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios,size: 15,),
                  ),onTap: (){
                    Navigator.pushNamed(context, "signup-2");
                  },iconColor: orange,),
              ),
            ),
            SizedBox(height: width*0.03,),
            Padding(
              padding:EdgeInsets.only(right:width*0.06,left: width*0.06),
              child: Container(height: 70,color: white1,
                alignment: Alignment.center,
                child: ListTile(
                  trailing: Padding(
                    padding:  const EdgeInsets.only(right:17),
                    child: Text("حساب مستخدم",style: GoogleFonts.ibmPlexSansArabic(color: orange,fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios,size: 15,),
                  ),onTap: (){
                  Navigator.pushNamed(context, "signup-1");
                },iconColor: orange,),
              ),
            ),
          ],
        ));
  }
}
