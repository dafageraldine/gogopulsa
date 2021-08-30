import 'package:flutter/material.dart';
import 'package:gogopulsa/class.dart';

class SeatMap extends StatefulWidget {
  @override
  _SeatMapState createState() => _SeatMapState();
}

class _SeatMapState extends State<SeatMap> {
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
                        "PILIH KURSI",
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
            SizedBox(
              height: width * 0.05,
            ),
            Container(
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
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: width * 0.05, left: width * 0.05),
                    child: Align(
                        alignment: Alignment.topLeft, child: Text("Nama : ")),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: width * 0.05, left: width * 0.05),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Kursi yang dipilih : ")),
                  )
                ],
              ),
            ),
            SizedBox(
              height: width * 0.08,
            ),
            Container(
              width: width * 0.8,
              height: width * 2.9,
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
              child: Column(
                children: [
                  Container(
                    width: width * 0.8,
                    height: width * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width * 0.15,
                          height: width * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color.fromRGBO(242, 101, 126, 1),
                          ),
                        ),
                        Text(
                          dataseatkereta[0].wagonCode +
                              ' ' +
                              dataseatkereta[0].wagonNumber,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: width * 0.038),
                        ),
                        Container(
                          width: width * 0.15,
                          height: width * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromRGBO(242, 101, 126, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width * 0.05,
                            height: width * 0.05,
                            color: Colors.orange[500],
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text("Dipilih"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: width * 0.05,
                            height: width * 0.05,
                            color: Colors.grey[300],
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text("Tersedia"),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: width * 0.05,
                            height: width * 0.05,
                            color: Colors.grey[600],
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text("Terisi"),
                        ],
                      ),
                      // Text("C"),
                      // Text("D"),
                      // Text("E")
                    ],
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("A"),
                      Text("B"),
                      Text(""),
                      Text("C"),
                      Text("D"),
                      Text("E")
                    ],
                  ),
                  ListView.builder(
                    itemBuilder: (c, i) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: width * 0.08,
                                height: width * 0.08,
                                color: Colors.grey[300],
                              ),
                              Container(
                                width: width * 0.08,
                                height: width * 0.08,
                                color: Colors.grey[300],
                              ),
                              Text((i + 1).toString()),
                              Container(
                                width: width * 0.08,
                                height: width * 0.08,
                                color: Colors.grey[300],
                              ),
                              Container(
                                width: width * 0.08,
                                height: width * 0.08,
                                color: Colors.grey[300],
                              ),
                              Container(
                                width: width * 0.08,
                                height: width * 0.08,
                                color: Colors.grey[300],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                        ],
                      );
                    },
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: 24,
                  )
                ],
              ),
            ),
            SizedBox(
              height: width * 0.05,
            ),
            InkWell(
              child: Container(
                width: width * 0.8,
                height: width * 0.2,
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
                  "SIMPAN",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: width * 0.05),
                )),
              ),
            ),
            SizedBox(
              height: width * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
