import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gogopulsa/class.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Keretaapi extends StatefulWidget {
  @override
  _KeretaapiState createState() => _KeretaapiState();
}

class _KeretaapiState extends State<Keretaapi> {
  var selectedpilihan = kaiorigin[0];
  var selected = kaidestination[0];
  var tgl = "Masukkan Tanggal";
  var depart = "";
  TextEditingController adult = new TextEditingController();
  TextEditingController infant = new TextEditingController();

  List<DropdownMenuItem> buildItems(List<Trainorigin> pilihans) {
    List<DropdownMenuItem> items = [];
    for (var item in pilihans) {
      items.add(DropdownMenuItem(
        child: Text(item.originfull),
        value: item,
      ));
    }
    return items;
  }

  List<DropdownMenuItem> buildItemsz(List<Traindestination> pilihans) {
    List<DropdownMenuItem> items = [];
    for (var item in pilihans) {
      items.add(DropdownMenuItem(
        child: Text(item.destinationfull),
        value: item,
      ));
    }
    return items;
  }

  Future carikereta() async {
    var body = {
      "origin": selectedpilihan.origin,
      "destination": selected.destination,
      "departDate": depart,
      "paxAdult": adult.text,
      "paxChild": '0',
      "paxInfant": infant.text
    };
    // body = json.encode(body) as Map<String, String>;
    var url = baseurl + 'public/api/data/kereta/jadwal';
    http.Response ceks = await http.post(Uri.parse(url),
        headers: {
          // HttpHeaders.contentTypeHeader: "application/json",
          'apiKey':
              '632e93023886160a2a5494cd49aeb72994fc61f6834355d175a423b99715a9df',
        },
        body: body);
    print(ceks.body);
    print(body);
    print(url);
  }

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
                  height: width * 0.43,
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
                        "KAI",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.075, top: width * 0.25),
                  child: Container(
                    width: width * 0.85,
                    height: width * 1.15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              spreadRadius: 2,
                              offset: Offset(0, 3))
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: width * 0.07,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.1),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Dari",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensansbold',
                                  fontSize: width * 0.034),
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.8,
                          height: width * 0.15,
                          child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    dropdownColor:
                                        Color.fromRGBO(229, 229, 229, 1),
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        color: Color.fromRGBO(2, 62, 74, 1)),
                                    value: selectedpilihan,
                                    items: buildItems(kaiorigin),
                                    onChanged: (item) {
                                      setState(() {
                                        selectedpilihan = item;
                                      });
                                    },
                                  ))),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Ke",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              ),
                            )),
                        Container(
                          width: width * 0.8,
                          height: width * 0.15,
                          child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    dropdownColor:
                                        Color.fromRGBO(229, 229, 229, 1),
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        color: Color.fromRGBO(2, 62, 74, 1)),
                                    value: selected,
                                    items: buildItemsz(kaidestination),
                                    onChanged: (item) {
                                      setState(() {
                                        selected = item;
                                      });
                                    },
                                  ))),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Pergi",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              ),
                            )),
                        SizedBox(
                          height: width * 0.03,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  print("tapped");
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2021),
                                          lastDate: DateTime(2100))
                                      .then((date) {
                                    tgl =
                                        DateFormat('EEEE,d LLL y').format(date);
                                    depart =
                                        DateFormat('yyyy-MM-dd').format(date);
                                    setState(() {});
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      tgl,
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontFamily: 'Opensans',
                                          fontSize: width * 0.03),
                                    ),
                                    SizedBox(
                                      width: width * 0.05,
                                    ),
                                    Icon(
                                      Icons.edit,
                                      size: width * 0.034,
                                      color: Colors.grey[600],
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Penumpang Dewasa (Usia 3+)",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.032),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.1, top: width * 0.02),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                child: TextFormField(
                                    // onChanged: (text) {
                                    //   text.length == 4
                                    //       ? getlist()
                                    //       : text.length < 4
                                    //           ? setState(() {
                                    //               pulsadata.clear();
                                    //             })
                                    //           : null;
                                    // },
                                    style: TextStyle(
                                        fontSize: width * 0.032,
                                        color: Color.fromRGBO(2, 62, 74, 1)),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(3),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    controller: adult,
                                    decoration: InputDecoration(
                                        // disabledBorder: ,
                                        // focusColor: Colors.white,
                                        // fillColor: Colors.white,
                                        hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                218, 218, 218, 1),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.032),
                                        hintText: "Masukkan Jumlah Penumpang")),
                              ),
                            )),
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Penumpang Bayi (Usia Dibawah 3)",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.032),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.1, top: width * 0.02),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                child: TextFormField(
                                    // onChanged: (text) {
                                    //   text.length == 4
                                    //       ? getlist()
                                    //       : text.length < 4
                                    //           ? setState(() {
                                    //               pulsadata.clear();
                                    //             })
                                    //           : null;
                                    // },
                                    style: TextStyle(
                                        fontSize: width * 0.032,
                                        color: Color.fromRGBO(2, 62, 74, 1)),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(3),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    controller: infant,
                                    decoration: InputDecoration(
                                        // disabledBorder: ,
                                        // focusColor: Colors.white,
                                        // fillColor: Colors.white,
                                        hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                218, 218, 218, 1),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.032),
                                        hintText: "Masukkan Jumlah Penumpang")),
                              ),
                            )),
                        SizedBox(
                          height: width * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            carikereta();
                          },
                          child: Container(
                            width: width * 0.75,
                            height: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(245, 130, 32, 1),
                            ),
                            child: Center(
                                child: Text(
                              "Cari Kereta",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.white,
    );
  }
}
