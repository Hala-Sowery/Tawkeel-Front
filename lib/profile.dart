import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

Color orange = const Color.fromRGBO(246, 146, 121, 1);
Color orangeO = const Color.fromRGBO(246, 146, 121, 0.7);
Color white1 = const Color.fromRGBO(247, 247, 247, 1);
Color white2 = const Color.fromRGBO(240, 240, 240, 1);

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(height: height * 0.15, color: white1),
                Positioned(
                  top: 50,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: orange,
                          size: 35,
                        ),
                        radius: 45,
                        backgroundColor: white2),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: height * 0.10,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.08, left: width * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: orange,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text("اسم المستخدم",
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontWeight: FontWeight.bold,
                            color: orange,
                            fontSize: 25,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.08,
                      left: width * 0.08,
                      top: width * 0.06,
                      bottom: 5),
                  child: Text("عن المحامي",
                      style: GoogleFonts.ibmPlexSansArabic(
                        fontWeight: FontWeight.bold,
                        color: orange,
                        fontSize: 17,
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.08, left: width * 0.08),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.08,
                      left: width * 0.08,
                      top: width * 0.02,
                      bottom: 5),
                  child: Text("هنا وصف عن المحامي...",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: orangeO,
                        fontSize: 15,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.08,
                      left: width * 0.08,
                      top: width * 0.06,
                      bottom: 5),
                  child: Text("الشهادات",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.ibmPlexSansArabic(
                        fontWeight: FontWeight.bold,
                        color: orange,
                        fontSize: 17,
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.08, left: width * 0.08),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.08,
                      left: width * 0.08,
                      top: width * 0.02,
                      bottom: 5),
                  child: Column(children: [
                    Text("*شهادة 1",
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: orangeO,
                          fontSize: 15,
                        )),
                    Text("*شهادة 2",
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: orangeO,
                          fontSize: 15,
                        )),
                    Text("*شهادة 3",
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: orangeO,
                          fontSize: 15,
                        )),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.08,
                      left: width * 0.08,
                      top: width * 0.06,
                      bottom: 5),
                  child: Text("التقييمات",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.ibmPlexSansArabic(
                        fontWeight: FontWeight.bold,
                        color: orange,
                        fontSize: 17,
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.08, left: width * 0.08),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: width,
                    height: height*0.70,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.01, bottom: height * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width * 0.08, left: width * 0.08),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: const EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: orange,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        Text("اسم المستخدم",
                                            textDirection: TextDirection.rtl,
                                            style: GoogleFonts.ibmPlexSansArabic(
                                              fontWeight: FontWeight.bold,
                                              color: orange,
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width * 0.08,
                                        left: width * 0.08,
                                        top: height * 0.02),
                                    child: Text("xxxxxxxxxxxxxxxxxxxxxx",
                                        style: GoogleFonts.ibmPlexSansArabic(
                                          fontWeight: FontWeight.bold,
                                          color: orangeO,
                                          fontSize: 12,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.10,)
          ],
        ),
      ),
      floatingActionButton: Container(
        width: width - 30,
        child: FloatingActionButton(
          backgroundColor: orange,
          onPressed: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => AlertDialog(
                      title: Text("تأكيد اختيار المحامي",textDirection: TextDirection.rtl,
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontWeight: FontWeight.bold,
                            color: orange,
                            fontSize: 20,
                          )),
                      content: Text("سعر الاستشارة ٢٠ دينار",textDirection: TextDirection.rtl,
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontWeight: FontWeight.bold,
                            color: orange,
                            fontSize: 15,
                          )),
                      actionsAlignment: MainAxisAlignment.center,
                      actions: [
                        Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: SizedBox(
                            width: width,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("تأكيد الإختيار",
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
                          padding: EdgeInsets.only(right: 20, left: 20,top: 10),
                          child: SizedBox(
                            width: width,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("إلغاء",
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    fontWeight: FontWeight.bold,
                                    color: orange,
                                    fontSize: 15,
                                  )),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(7.0),
                                      ))),
                            ),
                          ),
                        ),
                      ],
                    ));
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.arrow_back_rounded,
                size: 22,
              ),
            ),
            Text("احجز استشارة",
                style: GoogleFonts.ibmPlexSansArabic(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17,
                )),
          ]),
          shape: RoundedRectangleBorder(),
        ),
      ),
    );
  }
}
