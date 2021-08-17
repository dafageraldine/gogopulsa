import 'package:flutter/material.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/formpenumpang.dart';

class Detailpemesanankereta extends StatefulWidget {
  @override
  _DetailpemesanankeretaState createState() => _DetailpemesanankeretaState();
}

class _DetailpemesanankeretaState extends State<Detailpemesanankereta> {
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
                        "FORM PEMESANAN",
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
                      height: width * 0.22,
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
                                  trainclassdata[0].trainame +
                                      " " +
                                      trainclassdata[0].trainumber,
                                  style: TextStyle(fontSize: width * 0.03),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
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
                            )
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
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.55, top: width * 0.03),
                        child: Container(
                          width: width * 0.15,
                          height: width * 0.08,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 142, 151, 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.034),
                          )),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nama : Dafa Geraldine",
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
                                "NoHP : 08778232123",
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) => Formpenumpang()));
                      },
                      child: Container(
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
                                  left: width * 0.6, top: width * 0.16),
                              child: Container(
                                width: width * 0.15,
                                height: width * 0.08,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 142, 151, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.034),
                                )),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: width * 0.03,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.05),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Nama : Dafa Geraldine",
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
                                      "ID : 3578291807990002",
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
                                      "tanggal lahir : 16-07-1999",
                                      style: TextStyle(fontSize: width * 0.034),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: width * 0.02,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.05),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "NoHp: 029748912794719",
                                          style: TextStyle(
                                              fontSize: width * 0.034),
                                        )))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: width * 0.03,
                    )
                  ],
                );
              },
              shrinkWrap: true,
              itemCount: vgadult + vginfant,
              physics: ClampingScrollPhysics(),
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Container(
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
                "Pilih Kursi",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Opensansbold',
                    fontSize: width * 0.038),
              )),
            ),
            SizedBox(
              height: width * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
