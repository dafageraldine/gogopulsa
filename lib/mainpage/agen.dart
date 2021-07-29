import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Agen extends StatefulWidget {
  @override
  _AgenState createState() => _AgenState();
}

class _AgenState extends State<Agen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.25,
                  color: Color.fromRGBO(242, 101, 126, 1),
                  // child: ,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, top: height * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.15,
                        height: width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.1),
                        child: Row(
                          children: [
                            Text(
                              "Hubungi\nkami",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.028),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SvgPicture.asset(
                              "assets/call.svg",
                              width: width * 0.05,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: width * 0.5,
                      // ),
                      // Icon(
                      //   Icons.mail,
                      //   color: Colors.white,
                      //   size: width * 0.08,
                      // ),
                      // SizedBox(
                      //   width: width * 0.02,
                      // ),
                      // Icon(
                      //   Icons.notifications,
                      //   color: Colors.white,
                      //   size: width * 0.08,
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, top: height * 0.15),
                  child: Container(
                    width: width * 0.8,
                    height: width * 0.35,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.black12,
                              spreadRadius: 5.0,
                              offset: Offset(0, 8))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: width * 0.08, right: width * 0.04),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "assets/Group.png",
                              width: width * 0.15,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: width * 0.04,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.05),
                              child: Text(
                                "KODE REFERALL AGEN ANDA",
                                style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.03),
                              ),
                            ),
                            SizedBox(
                              height: width * 0.04,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.05),
                              child: Text(
                                "RIOBOY03",
                                style: TextStyle(
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              ),
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.05),
                              child: Text(
                                "BAGIKAN KODE",
                                style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.03),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                // Padding(
                //   padding:
                //       EdgeInsets.only(left: width * 0.1, top: height * 0.32),
                //   child: Container(
                //     width: width * 0.8,
                //     height: width * 0.38,
                //     color: Colors.blue,
                //     // child: ,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: width * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Fitur Agen",
                    style: TextStyle(
                        color: Color.fromRGBO(2, 62, 74, 1),
                        fontFamily: 'Opensansbold',
                        fontSize: width * 0.03),
                  )),
            ),
            SizedBox(
              height: width * 0.06,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width * 0.1,
                ),
                Container(
                  width: width * 0.25,
                  height: width * 0.25,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      SvgPicture.asset(
                        "assets/dash.svg",
                        width: width * 0.08,
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Dashboard\nAgen",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.03),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Container(
                  width: width * 0.25,
                  height: width * 0.25,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      SvgPicture.asset(
                        "assets/target.svg",
                        width: width * 0.08,
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Target Agen",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.03),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Container(
                  width: width * 0.25,
                  height: width * 0.25,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      SvgPicture.asset(
                        "assets/komisi.svg",
                        width: width * 0.08,
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Riwayat\nKomisi",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.03),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: width * 0.06,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width * 0.1,
                ),
                Container(
                  width: width * 0.25,
                  height: width * 0.25,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      SvgPicture.asset(
                        "assets/tips.svg",
                        width: width * 0.08,
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Tips",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.03),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Container(
                  width: width * 0.25,
                  height: width * 0.25,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      SvgPicture.asset(
                        "assets/news.svg",
                        width: width * 0.08,
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Alat\nPromosi",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.03),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Container(
                  width: width * 0.25,
                  height: width * 0.25,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      SvgPicture.asset(
                        "assets/loc.svg",
                        width: width * 0.08,
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        "Agen\nTerdekat",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.03),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: width * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Gabung Agen Super",
                    style: TextStyle(
                        color: Color.fromRGBO(2, 62, 74, 1),
                        fontFamily: 'Opensansbold',
                        fontSize: width * 0.03),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Mau lebih untung? Ayo gabung jadi agen super kami",
                    style: TextStyle(
                        color: Color.fromRGBO(2, 62, 74, 1),
                        fontFamily: 'Opensans',
                        fontSize: width * 0.03),
                  )),
            ),
            SizedBox(
              height: width * 0.06,
            ),
            Container(
              width: width * 0.8,
              height: width * 0.5,
              color: Colors.white,
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.telkomsel.com/sites/default/files/box_media/left/mobile/Tsel-Halo%20Payment%20Program-Landing%20Page-210405-480x270_1.jpg"),
              ),
            ),
            SizedBox(
              height: width * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
