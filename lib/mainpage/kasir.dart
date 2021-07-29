import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Kasir extends StatefulWidget {
  @override
  _KasirState createState() => _KasirState();
}

class _KasirState extends State<Kasir> {
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
                    height: width * 0.36,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.05, top: width * 0.05),
                          child: SvgPicture.asset(
                            "assets/kasir.svg",
                            width: width * 0.1,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: width * 0.04,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.2),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Total Penjualan",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensans',
                                        fontSize: width * 0.034),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.2),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Kamis, 21 mei 2021",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensans',
                                        fontSize: width * 0.032),
                                  )),
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.2),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Rp 200.000",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.036),
                                  )),
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.black,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              width: width * 0.7,
                              height: width * 0.1,
                              color: Color.fromRGBO(107, 70, 193, 1),
                              child: Center(
                                child: Text(
                                  "ISI SALDO",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Opensansbold',
                                      fontSize: width * 0.034),
                                ),
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
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Pilih Kegiatan Lain",
                    style: TextStyle(
                        color: Color.fromRGBO(2, 62, 74, 1),
                        fontFamily: 'Opensansbold',
                        fontSize: width * 0.034),
                  )),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width * 0.8,
              height: height * 0.25,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: width * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/pensil.svg",
                        width: width * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Atur Harga Jual",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text(
                            "atur harga jual produk anda",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.032),
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      SvgPicture.asset(
                        "assets/graf.svg",
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Laporan Bulanan",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text(
                            "Lihat daftar transaksi",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.032),
                          )
                        ],
                      ),
                      SizedBox(
                        width: width * 0.15,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
