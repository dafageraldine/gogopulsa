import 'package:flutter/material.dart';

class Semua extends StatefulWidget {
  @override
  _SemuaState createState() => _SemuaState();
}

class _SemuaState extends State<Semua> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: width * 0.04,
            ),
            Center(
              child: Container(
                width: width * 0.85,
                height: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.02, top: width * 0.05),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: width * 0.15,
                          height: width * 0.15,
                          child: Center(
                            child: Image(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaUtM_bAg4nhL4cKIXq2dj8PkRptZikLV0Go1HP80Jk0OXMN66cKuGvsrAn97EsGt02U0&usqp=CAU")),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Top-up Saldo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.045),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "08123456789",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "20 mei 2021(18:00 WIB)",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width * 0.04,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: width * 0.2,
                            ),
                            Container(
                              width: width * 0.25,
                              height: width * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ),
                              child: Center(
                                  child: Text(
                                "Berhasil",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Text(
                              "Lihat Detail",
                              style: TextStyle(
                                  color: Color.fromRGBO(73, 84, 180, 1),
                                  fontSize: width * 0.03),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: width * 0.04,
            ),
            Center(
              child: Container(
                width: width * 0.85,
                height: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.02, top: width * 0.05),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: width * 0.15,
                          height: width * 0.15,
                          child: Center(
                            child: Image(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaUtM_bAg4nhL4cKIXq2dj8PkRptZikLV0Go1HP80Jk0OXMN66cKuGvsrAn97EsGt02U0&usqp=CAU")),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Top-up Saldo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.045),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "08123456789",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "20 mei 2021(18:00 WIB)",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width * 0.04,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: width * 0.2,
                            ),
                            Container(
                              width: width * 0.25,
                              height: width * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(254, 189, 46, 1),
                              ),
                              child: Center(
                                  child: Text(
                                "Menunggu",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Text(
                              "Lihat Detail",
                              style: TextStyle(
                                  color: Color.fromRGBO(73, 84, 180, 1),
                                  fontSize: width * 0.03),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: width * 0.04,
            ),
            Center(
              child: Container(
                width: width * 0.85,
                height: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.02, top: width * 0.05),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: width * 0.15,
                          height: width * 0.15,
                          child: Center(
                            child: Image(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaUtM_bAg4nhL4cKIXq2dj8PkRptZikLV0Go1HP80Jk0OXMN66cKuGvsrAn97EsGt02U0&usqp=CAU")),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Top-up Saldo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.045),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "08123456789",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "20 mei 2021(18:00 WIB)",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width * 0.04,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: width * 0.2,
                            ),
                            Container(
                              width: width * 0.25,
                              height: width * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                              child: Center(
                                  child: Text(
                                "Diproses",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Text(
                              "Lihat Detail",
                              style: TextStyle(
                                  color: Color.fromRGBO(73, 84, 180, 1),
                                  fontSize: width * 0.03),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: width * 0.04,
            ),
            Center(
              child: Container(
                width: width * 0.85,
                height: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.02, top: width * 0.05),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: width * 0.15,
                          height: width * 0.15,
                          child: Center(
                            child: Image(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaUtM_bAg4nhL4cKIXq2dj8PkRptZikLV0Go1HP80Jk0OXMN66cKuGvsrAn97EsGt02U0&usqp=CAU")),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Top-up Saldo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.045),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "08123456789",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "20 mei 2021(18:00 WIB)",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width * 0.04,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: width * 0.2,
                            ),
                            Container(
                              width: width * 0.25,
                              height: width * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                              child: Center(
                                  child: Text(
                                "Batal",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Text(
                              "Lihat Detail",
                              style: TextStyle(
                                  color: Color.fromRGBO(73, 84, 180, 1),
                                  fontSize: width * 0.03),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: width * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
