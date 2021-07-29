import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gogopulsa/mainpage/bottom.dart';

class Konfirmasi extends StatefulWidget {
  @override
  _KonfirmasiState createState() => _KonfirmasiState();
}

class _KonfirmasiState extends State<Konfirmasi> {
  DateTime backbuttonpressedTime;
  var pin = "";
  var show = 1;
  var cekpin = 0;

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);
    if (backButton) {
      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast(
          msg: "Double Click to exit app",
          backgroundColor: Colors.black,
          textColor: Colors.white);
      return false;
    }
    exit(0);
    return true;
  }

  Future checkpin() async {
    if (pin == "123456") {
      cekpin = 1;
      pin = "";
      setState(() {});
    } else {
      pin = "";
      show = 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
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
                      child: Padding(
                        padding: EdgeInsets.only(top: width * 0.02),
                        child: Center(
                          child: Text(
                            "KONFIRMASI PEMBAYARAN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: width * 0.1,
                ),
                cekpin == 1
                    ? Container(
                        width: width * 0.85,
                        height: width * 0.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Transaksi Sukses",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensansbold',
                                  fontSize: width * 0.045),
                            ),
                            SvgPicture.asset("assets/item.svg"),
                            InkWell(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).push(
                                    MaterialPageRoute(
                                        builder: (context) => Bottom()));
                              },
                              child: Container(
                                width: width * 0.5,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromRGBO(245, 130, 32, 1)),
                                child: Center(
                                    child: Text(
                                  "Kembali Ke beranda",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Opensansbold',
                                      fontSize: width * 0.034),
                                )),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(
                        width: width * 0.85,
                        height: width * 0.55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: width * 0.05,
                            ),
                            Text(
                              "Masukkan PIN anda\nuntuk konfirmasi pembayaran",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensansbold',
                                  fontSize: width * 0.045),
                            ),
                            SizedBox(
                              height: width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: width * 0.1,
                                  height: width * 0.1,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  child: Center(
                                      child: Text(
                                    pin == "" ? "" : pin[0],
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.045),
                                  )),
                                ),
                                Container(
                                  width: width * 0.1,
                                  height: width * 0.1,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  child: Center(
                                      child: Text(
                                    pin == ""
                                        ? ""
                                        : pin.length > 1
                                            ? pin[1]
                                            : "",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.045),
                                  )),
                                ),
                                Container(
                                  width: width * 0.1,
                                  height: width * 0.1,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  child: Center(
                                      child: Text(
                                    pin == ""
                                        ? ""
                                        : pin.length > 2
                                            ? pin[2]
                                            : "",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.045),
                                  )),
                                ),
                                Container(
                                  width: width * 0.1,
                                  height: width * 0.1,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  child: Center(
                                      child: Text(
                                    pin == ""
                                        ? ""
                                        : pin.length > 3
                                            ? pin[3]
                                            : "",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.045),
                                  )),
                                ),
                                Container(
                                  width: width * 0.1,
                                  height: width * 0.1,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  child: Center(
                                      child: Text(
                                    pin == ""
                                        ? ""
                                        : pin.length > 4
                                            ? pin[4]
                                            : "",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.045),
                                  )),
                                ),
                                Container(
                                  width: width * 0.1,
                                  height: width * 0.1,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  child: Center(
                                      child: Text(
                                    pin == ""
                                        ? ""
                                        : pin.length > 5
                                            ? pin[5]
                                            : "",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontFamily: 'Opensansbold',
                                        fontSize: width * 0.045),
                                  )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.05,
                            ),
                            pin.length == 6
                                ? InkWell(
                                    onTap: () {
                                      show = 0;
                                      checkpin();
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: width * 0.3,
                                      height: width * 0.1,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color:
                                              Color.fromRGBO(245, 130, 32, 1)),
                                      child: Center(
                                          child: Text(
                                        "Oke",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Opensansbold',
                                            fontSize: width * 0.034),
                                      )),
                                    ),
                                  )
                                : Text("")
                          ],
                        ),
                      ),
                SizedBox(
                  height: width * 0.05,
                ),
                show == 1
                    ? Container(
                        width: width * 0.85,
                        height: width * 0.85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "1";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "2";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "3";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "4";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "4",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "5";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "5",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "6";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "6",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "7";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "7",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "8";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "8",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "9";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "9",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (pin.length < 6) {
                                      pin = pin + "0";
                                      setState(() {});
                                    }
                                    print(pin);
                                  },
                                  child: Container(
                                    width: width * 0.35,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(229, 229, 229, 1),
                                    child: Center(
                                        child: Text(
                                      "0",
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.06),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    pin = "";
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: width * 0.35,
                                    height: width * 0.15,
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    child: Center(
                                        child: Text(
                                      "Hapus",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(229, 229, 229, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.045),
                                    )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Text("")
              ],
            ),
          )),
    );
  }
}
