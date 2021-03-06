import 'package:flutter/material.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/seatmap.dart';

import '../../../class.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.13,
                  color: Color.fromRGBO(0, 142, 151, 1),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, top: height * 0.06),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: width * 0.1,
                          height: width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color.fromRGBO(242, 101, 126, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Text(
                        "CHECKOUT PEMESANAN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1, top: width * 0.05),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Detail Perjalanan",
                  style: TextStyle(
                      color: Color.fromRGBO(2, 62, 74, 1),
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.034),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: width * 0.1, top: width * 0.03),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: width * 0.8,
                      height: width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.05, top: width * 0.03),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  bookedtrain[0].orifull,
                                  style: TextStyle(fontSize: width * 0.03),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  size: width * 0.04,
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  bookedtrain[0].destifull,
                                  style: TextStyle(fontSize: width * 0.03),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Row(
                              children: [
                                Text(
                                  vgdepart,
                                  style: TextStyle(fontSize: width * 0.03),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  datapesankereta[0].waktu,
                                  style: TextStyle(fontSize: width * 0.03),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Subclass ",
                                  style: TextStyle(fontSize: width * 0.034),
                                ),
                                Text(
                                  datapesankereta[0].subclass,
                                  style: TextStyle(fontSize: width * 0.034),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Row(
                              children: [
                                Text(
                                  trainclassdata[0].trainame +
                                      " " +
                                      trainclassdata[0].trainumber,
                                  style: TextStyle(fontSize: width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.only(left: width * 0.1, top: width * 0.05),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Detail Pemesanan",
                      style: TextStyle(
                          color: Color.fromRGBO(2, 62, 74, 1),
                          fontFamily: 'Opensansbold',
                          fontSize: width * 0.034),
                    ))),
            Padding(
              padding: EdgeInsets.only(top: width * 0.03),
              child: Container(
                width: width * 0.8,
                height: width * 0.18,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[400],
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.05, top: width * 0.03),
                  child: Stack(
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: width * 0.55, top: width * 0.03),
                      //   child: InkWell(
                      //     onTap: () {
                      //       Navigator.of(context, rootNavigator: true).push(
                      //           MaterialPageRoute(
                      //               builder: (context) => Datapemesan()));
                      //     },
                      //     child: Container(
                      //       width: width * 0.15,
                      //       height: width * 0.08,
                      //       decoration: BoxDecoration(
                      //           color: Color.fromRGBO(0, 142, 151, 1),
                      //           borderRadius: BorderRadius.circular(5)),
                      //       child: Center(
                      //           child: Text(
                      //         "Edit",
                      //         style: TextStyle(
                      //             color: Colors.white, fontSize: width * 0.034),
                      //       )),
                      //     ),
                      //   ),
                      // ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                datapemesan.isEmpty
                                    ? "Nama : "
                                    : "Nama : " + datapemesan[0].nama,
                                style: TextStyle(fontSize: width * 0.03),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * 0.03,
                          ),
                          Row(
                            children: [
                              Text(
                                datapemesan.isEmpty
                                    ? "NoHP : "
                                    : "NoHP : " + datapemesan[0].hp,
                                style: TextStyle(fontSize: width * 0.03),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: width * 0.1, top: width * 0.05),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Detail Penumpang",
                      style: TextStyle(
                          color: Color.fromRGBO(2, 62, 74, 1),
                          fontFamily: 'Opensansbold',
                          fontSize: width * 0.034),
                    ))),
            ListView.builder(
              itemBuilder: (c, i) {
                return Column(
                  children: [
                    Container(
                      width: width * 0.8,
                      height: width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: width * 0.05, bottom: width * 0.05),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                          builder: (context) => SeatMap()));

                                  // createbooking();
                                  // Navigator.of(context, rootNavigator: true)
                                  //     .push(MaterialPageRoute(builder: (context) => Checkout()));
                                },
                                child: Container(
                                  width: width * 0.25,
                                  height: width * 0.1,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[400],
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0, 3))
                                    ],
                                  ),
                                  child: Center(
                                      child: Text(
                                    "PILIH KURSI",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.03),
                                  )),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: width * 0.06,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.05),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    seatpenumpangkereta.isEmpty
                                        ? "Nama : "
                                        : seatpenumpangkereta.length >= i + 1
                                            ? "Nama : " +
                                                seatpenumpangkereta[i].nama
                                            : "Nama : ",
                                    style: TextStyle(fontSize: width * 0.034),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.05),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    seatpenumpangkereta.isEmpty
                                        ? "ID : "
                                        : seatpenumpangkereta.length >= i + 1
                                            ? "ID : " +
                                                seatpenumpangkereta[i].id
                                            : "ID : ",
                                    style: TextStyle(fontSize: width * 0.034),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.05),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    seatpenumpangkereta.isEmpty
                                        ? "Kursi : "
                                        : seatpenumpangkereta.length >= i + 1
                                            ? "Kursi : " +
                                                seatpenumpangkereta[i]
                                                    .seatnumber +
                                                " " +
                                                seatpenumpangkereta[i]
                                                    .wagoncode +
                                                " " +
                                                seatpenumpangkereta[i]
                                                    .wagonumber
                                            : "Kursi : ",
                                    style: TextStyle(fontSize: width * 0.034),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              // Padding(
                              //     padding: EdgeInsets.only(left: width * 0.05),
                              //     child: Align(
                              //         alignment: Alignment.centerLeft,
                              //         child: Text(
                              //           datapenumpangkereta.isEmpty
                              //               ? "No HP : "
                              //               : datapenumpangkereta.length >=
                              //                       i + 1
                              //                   ? "No HP : " +
                              //                       datapenumpangkereta[i].hp
                              //                   : "No HP : ",
                              //           style:
                              //               TextStyle(fontSize: width * 0.034),
                              //         )))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.03,
                    )
                  ],
                );
              },
              shrinkWrap: true,
              itemCount: seatpenumpangkereta.length,
              physics: ClampingScrollPhysics(),
            ),
            SizedBox(
              height: width * 0.06,
            ),
            InkWell(
              onTap: () {
                // createbooking();
              },
              child: Container(
                width: width * 0.8,
                height: width * 0.16,
                decoration: BoxDecoration(
                  color: Colors.orange[500],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3))
                  ],
                ),
                child: Center(
                    child: Text(
                  "PEMBAYARAN",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.038),
                )),
              ),
            ),
            // SizedBox(
            //   height: width * 0.04,
            // ),
            // Divider(
            //   height: 2,
            //   indent: width * 0.08,
            //   endIndent: width * 0.08,
            //   color: Colors.grey[500],
            //   thickness: 2,
            // ),
            // SizedBox(
            //   height: width * 0.04,
            // ),
            // InkWell(
            //   onTap: () {
            //     // createbooking();
            //     // Navigator.of(context, rootNavigator: true)
            //     //     .push(MaterialPageRoute(builder: (context) => Checkout()));
            //   },
            //   child: Container(
            //     width: width * 0.8,
            //     height: width * 0.16,
            //     decoration: BoxDecoration(
            //       color: Color.fromRGBO(2, 62, 74, 1),
            //       borderRadius: BorderRadius.circular(10),
            //       boxShadow: [
            //         BoxShadow(
            //             color: Colors.grey[400],
            //             spreadRadius: 3,
            //             blurRadius: 5,
            //             offset: Offset(0, 3))
            //       ],
            //     ),
            //     child: Center(
            //         child: Text(
            //       "PILIH KURSI",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontFamily: 'Opensansbold',
            //           fontSize: width * 0.038),
            //     )),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
