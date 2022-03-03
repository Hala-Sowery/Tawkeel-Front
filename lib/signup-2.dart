import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

Color orange = const Color.fromRGBO(246, 146, 121, 1);
Color white1 = const Color.fromRGBO(247, 247, 247, 1);
Color white2 = const Color.fromRGBO(240, 240, 240, 1);

class Signup_2 extends StatefulWidget {
  const Signup_2({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

TextEditingController phoneController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController pswController = TextEditingController();

class _SignupState extends State<Signup_2> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    List<String> items = [
      'قضاء نظامي',
      'قضاء ديني',
      'قضاء إداري',
      'قضاء خاص',
    ];

    bool isTablet;
    bool isPhone;

    final double devicePixelRatio = ui.window.devicePixelRatio;
    final ui.Size size = ui.window.physicalSize;
    final double width1 = size.width;
    final double height1 = size.height;

    if (devicePixelRatio < 2 && (width1 >= 1000 || height1 >= 1000)) {
      isTablet = true;
      isPhone = false;
    } else if (devicePixelRatio == 2 && (width1 >= 1520 || height1 >= 1520)) {
      isTablet = true;
      isPhone = false;
    } else {
      isTablet = false;
      isPhone = true;
    }
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: width * 0.08, bottom: width * 0.08, right: width * 0.08),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "إنشاء حساب محامي",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.ibmPlexSansArabic(
                      color: orange, fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: width * 0.09, bottom: width * 0.02),
              child: Text(
                "رقم الهاتف",
                style: GoogleFonts.ibmPlexSansArabic(
                  color: orange,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.08, left: width * 0.08),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                color: white1,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: TextFormField(
                      textDirection: TextDirection.rtl,
                      controller: phoneController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.rtl,
                        hintText: ("أدخل رقم الهاتف"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.black26, fontSize: 15),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.09, top: width * 0.04, bottom: width * 0.02),
              child: Text(
                "إسمك الكامل",
                textAlign: TextAlign.end,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: orange,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.08, left: width * 0.08),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                color: white1,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: TextFormField(
                      textDirection: TextDirection.rtl,
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.rtl,
                        hintText: ("أدخل إسمك الكامل"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.black26, fontSize: 15),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.09, top: width * 0.04, bottom: width * 0.02),
              child: Text(
                "كلمة المرور",
                textAlign: TextAlign.end,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: orange,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.08, left: width * 0.08),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                color: white1,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: TextFormField(
                      obscureText: true,
                      textDirection: TextDirection.rtl,
                      controller: pswController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintTextDirection: TextDirection.rtl,
                        hintText: ("أدخل كلمة المرور"),
                        hintStyle: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.black26, fontSize: 15),
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.09, top: width * 0.04, bottom: width * 0.02),
              child: Text(
                "شهادة مزاولة المهنة",
                textAlign: TextAlign.end,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: orange,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.08, left: width * 0.08),
              child: Container(
                  child: ListTile(
                    trailing: Padding(
                      padding: EdgeInsets.only(
                          right: isPhone ? width * 0.015 : width * 0.04),
                      child: Text("إرفاق شهادة مزاولة المهنة",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.black26,
                            fontSize: 15,
                          )),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        child: Icon(Icons.upload, color: orange),
                        onTap: () {},
                      ),
                    ),
                  ),
                  height: 70,
                  alignment: Alignment.center,
                  color: white1),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.09, top: width * 0.04, bottom: width * 0.02),
              child: Text(
                " نوع القضاء",
                textAlign: TextAlign.end,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: orange,
                  fontSize: 15,
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right:width*0.08,left: width*0.08,bottom: width * 0.02),
            //   child: Container(
            //     width: width,
            //     alignment: Alignment.centerRight,
            //       height: 70,
            //       color: white1,
            //     child: DropdownButtonHideUnderline(
            //       child: DropdownButton<String>(
            //         items: items
            //             .map<DropdownMenuItem<String>>((String value) {
            //           return DropdownMenuItem<String>(
            //             alignment: Alignment.centerRight,
            //             value: value,
            //             child: Text(value,
            //                 textDirection: TextDirection.rtl,
            //               style: GoogleFonts.ibmPlexSansArabic(
            //               color: orange,
            //               fontSize: 15,)),
            //           );
            //         })
            //             .toList(),
            //         // underline: Container(height: 0),
            //         isExpanded: true,
            //         hint: const Padding(
            //                   padding: EdgeInsets.only(left: 23),
            //                   child: Icon(
            //                     Icons.arrow_drop_down,
            //                     size: 35,
            //                     color: Color.fromRGBO(246, 146, 121, 1),
            //                   ),
            //                 ),
            //         onChanged: (value) => setState(() => 1),
            //               value: selectedValue,
            //         icon: Padding(
            //                   padding:EdgeInsets.only(right: width * 0.05),
            //                   child: Text(
            //                     'اختر نوع القضاء',
            //                     textDirection: TextDirection.rtl,
            //                     style: GoogleFonts.ibmPlexSansArabic(
            //                       color: Colors.black26,
            //                       fontSize: 15,
            //                     ),
            //                     overflow: TextOverflow.ellipsis,
            //                   ),
            //                 ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.08, left: width * 0.08),
              child: Container(
                width: width,
                height: 70,
                color: white1,
                child: DropdownButtonHideUnderline(
                  child: Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      alignment: Alignment.centerLeft,
                      iconEnabledColor: orange,
                      icon: Padding(
                        padding: EdgeInsets.only(right: width * 0.05),
                        child: Text(
                          'اختر نوع القضاء',
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.black26,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      hint: Padding(
                        padding: EdgeInsets.only(left: 23),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 35,
                          color: Color.fromRGBO(246, 146, 121, 1),
                        ),
                      ),
                      onChanged: (value) => setState(() => 1),
                      value: selectedValue,
                        items: items.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  alignment: Alignment.centerRight,
                                  value: value,
                                  child: Text(value,
                                      textDirection: TextDirection.rtl,
                                    style: GoogleFonts.ibmPlexSansArabic(
                                    color: orange,
                                    fontSize: 15,)),
                                );
                              })
                                  .toList(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.08, left: width * 0.08),
              child: SizedBox(
                height: 70,
                width: width,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "إنشاء حساب",
                      style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(orange))),
              ),
            ),
            const SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
