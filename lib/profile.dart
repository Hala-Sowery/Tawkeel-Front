import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<String> items = ["1", "2", "Third", "4"];
Color orange = const Color.fromRGBO(246, 146, 121, 1);
Color white1 = const Color.fromRGBO(247, 247, 247, 1);
Color white2 = const Color.fromRGBO(240, 240, 240, 1);

_buildTab(
    {required String text, required Color color, required TextStyle style}) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    decoration: ShapeDecoration(
      shape: const RoundedRectangleBorder(),
      color: color,
    ),
    child: Text(
      text,
      style: style,
    ),
  );
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];
  late TabController _tabController;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: myTabs.length,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _activeIndex = _tabController.index;
        });
      }
    });
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Builder(builder: (context) {
              return Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    actions: [
                      Padding(
                        padding:  EdgeInsets.only(right: 20),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text("العودة للخلف",style: GoogleFonts.ibmPlexSansArabic(color: Colors.black54,fontSize: 8,),),
                          ),
                          Icon(Icons.arrow_forward_rounded,color: Colors.black54,),
                        ]),
                      ),
              ],
                    toolbarHeight: width*0.17,
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  body: NestedScrollView(
                      headerSliverBuilder: (context, value) {
                        return [
                          SliverToBoxAdapter(
                            child: TabBar(
                                controller: _tabController,
                                indicatorWeight: 0,
                                unselectedLabelColor: orange,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicator: BoxDecoration(color: Colors.white),
                                tabs: [
                                  Tab(
                                    child: Container(
                                      width: width / 2,
                                      child: Align(
                                        child: _buildTab(
                                            text: 'محاميين متطوعين',
                                            color: _tabController.index == 0
                                                ? orange
                                                : white1,
                                            style:
                                                GoogleFonts.ibmPlexSansArabic(
                                              fontSize: 15,
                                            )),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      width: width / 2,
                                      child: Align(
                                        child: _buildTab(
                                            text: 'محاميين نظاميين',
                                            color: _tabController.index == 1
                                                ? orange
                                                : white1,
                                            style:
                                                GoogleFonts.ibmPlexSansArabic(
                                              fontSize: 15,
                                            )),
                                      ),
                                    ),
                                  ),
                                ]),
                          )
                        ];
                      },
                      body: Container(
                          child: _tabController.index == 0
                              ? TabBarView(children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          width: width,
                                          height: height,
                                          child: ListView.builder(
                                            itemCount: 7,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children : [
                                                ListTile(
                                                  trailing: CircleAvatar(
                                                    child: Icon(Icons.person,color: orange,),
                                                    radius: 30, backgroundColor: white2),
                                                  title: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                    children: [
                                                      Text("اسم المستخدم",
                                                          style: GoogleFonts
                                                              .ibmPlexSansArabic(
                                                            color: orange,
                                                            fontSize: 15,
                                                          )),
                                                  RatingBar.builder(
                                                    itemSize: 15,
                                                    initialRating: 5,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                                    itemBuilder: (context, _) => Icon(
                                                      Icons.star,
                                                      color: orange,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  ],
                                                  ),
                                                ),
                                                  index<6?
                                                  Padding(
                                                    padding:  EdgeInsets.only(right: 20,left: 20,bottom: 2,top: 2),
                                                    child: Divider(thickness: 1,),
                                                  )
                                                      :
                                                      SizedBox(height: 10,)
                                              ]);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text("hi"),
                                ])
                              : TabBarView(children: [
                                  Text("hey"),
                                  Text("hey"),
                                ]))));
            })));
  }
}
