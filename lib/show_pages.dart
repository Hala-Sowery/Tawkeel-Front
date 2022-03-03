import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'before_signup.dart';

class ShowPages extends StatelessWidget {
  const ShowPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: height*0.15,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[ Padding(
              padding:  EdgeInsets.only(left:width*0.04 ),
              child: SizedBox(
                width: 150,height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,"SplashScreen");
                  },
                  child: Text("before sign up",
                      style: GoogleFonts.ibmPlexSansArabic(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(orange),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(8.0),
                          ))),
                ),
              ),
            ),
              Padding(
                padding:  EdgeInsets.only(right:width*0.04 ),
                child: SizedBox(
                  width: 150,height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"signup-2");
                    },
                    child: Text("sign up - layer",
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(orange),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ))),
                  ),
                ),
              ),
          ]),
          SizedBox(height: height*0.10,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Padding(
                padding:  EdgeInsets.only(left:width*0.04 ),
                child: SizedBox(
                  width: 150,height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"signup-1");
                    },
                    child: Text("sign up - user",
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(orange),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ))),
                  ),
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(right:width*0.04 ),
                  child: SizedBox(
                    width: 150,height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,"signin");
                      },
                      child: Text("sign in",
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(orange),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ))),
                    ),
                  ),
                ),
              ]),SizedBox(height: height*0.10,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Padding(
                padding:  EdgeInsets.only(left:width*0.04 ),
                child: SizedBox(
                  width: 150,height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"profile");
                    },
                    child: Text("profile",
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(orange),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ))),
                  ),
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(right:width*0.04),
                  child: SizedBox(
                    width: 150,height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,"layers_page");
                      },
                      child: Text("listing layers",
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(orange),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ))),
                    ),
                  ),
                ),
              ]),SizedBox(height: height*0.10,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Padding(
                padding:  EdgeInsets.only(left:width*0.04),
                child: SizedBox(
                  width: 150,height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"types_page");
                    },
                    child: Text("types page",
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(orange),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ))),
                  ),
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(right:width*0.04),
                  child: SizedBox(
                    width: 150,height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,"chat");
                      },
                      child: Text("chat",
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(orange),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ))),
                    ),
                  ),
                ),
              ]),SizedBox(height: height*0.10,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
              children:[ Padding(
                padding:  EdgeInsets.only(left:width*0.04),
                child: SizedBox(
                  width: 150,height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"payment");
                    },
                    child: Text("payment",
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(orange),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ))),
                  ),
                ),
              ),
              ]),
        ],
      ),
    );
  }
}
