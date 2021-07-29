import 'package:flutter/material.dart';
import 'package:gogopulsa/mainpage/konfirmasi.dart';

class Pembayaran extends StatefulWidget {
  @override
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
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
                          "PEMBAYARAN",
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
                height: width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Rincian Biaya",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensansbold',
                              fontSize: width * 0.034),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: width * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nomor",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.034),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Text(
                                "087826116644",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Produk",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.034),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Text(
                                "087826116644",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jumlah",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.034),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.05),
                            child: Text("087826116644",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Promo",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.034),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.05),
                            child: Text("087826116644",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Container(
                width: width * 0.8,
                height: width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Saldo Anda",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 62, 74, 1),
                            fontFamily: 'Opensans',
                            fontSize: width * 0.034),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.05),
                        child: Text(
                          "Rp 100.000",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensansbold',
                              fontSize: width * 0.034),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.05,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (context) => Konfirmasi()));
                },
                child: Container(
                  width: width * 0.8,
                  height: width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pembayaran",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensans',
                              fontSize: width * 0.034),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.05),
                          child: Row(
                            children: [
                              Text(
                                "Pilih Metode\nPembayaran",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                ">",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.04),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
