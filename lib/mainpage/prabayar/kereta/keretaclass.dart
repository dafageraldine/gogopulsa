import 'package:flutter/material.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/detailpemesanankereta.dart';
import 'package:intl/intl.dart';

import '../../../class.dart';

class Trainclass extends StatefulWidget {
  @override
  _TrainclassState createState() => _TrainclassState();
}

class _TrainclassState extends State<Trainclass> {
  var formatCurrency = new NumberFormat.currency(locale: 'en_US', name: 'IDR ');

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
                  // child: ,
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
                        trainclassdata[0].trainame +
                            " " +
                            trainclassdata[0].trainumber,
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
            ListView.builder(
              itemBuilder: (c, i) {
                // var data = listkereta[i].departTime.split('T');
                // var datas = listkereta[i].arrivalTime.split('T');
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        datapesankereta.clear();
                        datapesankereta.add(Datapesankereta(
                            vgwaktu,
                            vgori,
                            vgdesti,
                            vgdepart,
                            vgadult.toString(),
                            vginfant.toString(),
                            trainclassdata[i].trainumber,
                            trainclassdata[i].subClass,
                            trainclassdata[i].availabilityClass));
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) => Detailpemesanankereta()));
                      },
                      child: Container(
                        width: width,
                        height: width * 0.35,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //       blurRadius: 4,
                            //       offset: Offset(0, 2),
                            //       color: Colors.grey[400],
                            //       spreadRadius: 2)
                            // ],
                            color: Colors.white),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.7, top: width * 0.2),
                              child: Container(
                                width: width * 0.2,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Text(
                                  "Pesan",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.034,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.02, left: width * 0.05),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Subclass ",
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                      Text(
                                        trainclassdata[i].subClass,
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.02, left: width * 0.05),
                                  child: Row(
                                    children: [
                                      Text(
                                        "availabilityClass ",
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                      Text(
                                        trainclassdata[i].availabilityClass,
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.02, left: width * 0.05),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Status : ",
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                      Text(
                                        trainclassdata[i].availabilityStatus,
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.02, left: width * 0.05),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Harga : ",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w600,
                                            // fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                      // Text(
                                      //   trainclassdata[i].availabilityClass,
                                      //   style: TextStyle(
                                      //       color: Colors.grey[500],
                                      //       fontWeight: FontWeight.w600,
                                      //       // fontFamily: 'Opensansbold',
                                      //       fontSize: width * 0.034),
                                      // ),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Text(
                                        formatCurrency.format(double.parse(
                                            trainclassdata[i].price)),
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w600,
                                            // fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.02, left: width * 0.05),
                                  child: Row(
                                    children: [
                                      Text(
                                        "PricePerAdult : ",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w600,
                                            // fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                      Text(
                                        formatCurrency.format(double.parse(
                                            trainclassdata[i].priceperadult)),
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.w600,
                                            // fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      ),
                                      // SizedBox(
                                      //   width: width * 0.05,
                                      // ),
                                      // Text(
                                      //   trainclassdata[i].trainumber,
                                      //   style: TextStyle(
                                      //       color: Colors.grey[500],
                                      //       fontWeight: FontWeight.w600,
                                      //       // fontFamily: 'Opensansbold',
                                      //       fontSize: width * 0.034),
                                      // )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: width * 0.02,
                    )
                  ],
                );
              },
              shrinkWrap: true,
              itemCount: trainclassdata.isEmpty ? 0 : trainclassdata.length,
              physics: ClampingScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
