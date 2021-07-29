import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/prabayar/subpulsaseluler/pembayaran.dart';
import 'package:http/http.dart' as http;

class Pulsaseluler extends StatefulWidget {
  @override
  _PulsaselulerState createState() => _PulsaselulerState();
}

class _PulsaselulerState extends State<Pulsaseluler> {
  // var item = 10;

  TextEditingController phone = new TextEditingController();

  Future getlist() async {
    http.Response cek = await http.get(
      Uri.parse(baseurl + "public/api/data/prefix/" + phone.text),
      headers: {
        // "Content-Type": "application/x-www-form-urlencoded",
        'apiKey':
            '632e93023886160a2a5494cd49aeb72994fc61f6834355d175a423b99715a9df',
      },
    );

    var jsons = json.decode(cek.body);
    var provider = jsons["data"]['provider'];
    http.Response ceks = await http.get(
      Uri.parse(baseurl +
          "public/api/data/produk?providerTipe=" +
          provider +
          "&tipe=PULSA"),
      headers: {
        // "Content-Type": "application/x-www-form-urlencoded",
        'apiKey':
            '632e93023886160a2a5494cd49aeb72994fc61f6834355d175a423b99715a9df',
      },
    );
    var jsonn = json.decode(ceks.body);
    // print(baseurl + "public/api/data/produk?providerTipe=" + provider);
    print(ceks.body);
    pulsadata.clear();
    for (var i = 0; i < jsonn['data'].length; i++) {
      pulsadata.add(Pulsadata(
          jsonn['data'][i]['id'],
          jsonn['data'][i]['kode'],
          jsonn['data'][i]['hargajual'],
          jsonn['data'][i]['provider'],
          jsonn['data'][i]['jenis'],
          jsonn['data'][i]['keterangan'],
          jsonn['data'][i]['nominal'],
          jsonn['data'][i]['gangguan'],
          jsonn['data'][i]['tipe'],
          jsonn['data'][i]['group_tipe'],
          jsonn['data'][i]['diskon'],
          jsonn['data'][i]['isDiskon'],
          jsonn['data'][i]['harga_net'],
          jsonn['data'][i]['biaya_admin']));
    }
    setState(() {});
    // print();

    // print(ceks.body);
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
                          "PULSA SELULER",
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
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nomor Handphone",
                    style: TextStyle(
                        color: Color.fromRGBO(2, 62, 74, 1),
                        fontFamily: 'Opensansbold',
                        fontSize: width * 0.034),
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: width * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: TextFormField(
                              onChanged: (text) {
                                text.length == 4
                                    ? getlist()
                                    : text.length < 4
                                        ? setState(() {
                                            pulsadata.clear();
                                          })
                                        : null;
                              },
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1)),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(15),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              controller: phone,
                              decoration: InputDecoration(
                                  // disabledBorder: ,
                                  // focusColor: Colors.white,
                                  // fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(218, 218, 218, 1),
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034),
                                  hintText: "Masukkan Nomor Handphone")),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.15,
                    height: width * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                            "assets/Vector (9).svg",
                            width: width * 0.1,
                            // fit: BoxFit.scaleDown,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // Text(
              //   "Transaksi Terakhir",
              // ),
              // Container(
              //   width: width * 0.5,
              //   height: width * 0.2,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     color: Colors.white,
              //   ),
              // )
              SizedBox(
                height: width * 0.05,
              ),
              pulsadata.isEmpty
                  ? Container(
                      width: width,
                      height: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: width * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.1),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Pilih Produk",
                                  style: TextStyle(
                                      color: Color.fromRGBO(2, 62, 74, 1),
                                      fontFamily: 'Opensansbold',
                                      fontSize: width * 0.034),
                                )),
                          ),
                        ],
                      ))
                  : ListView.builder(
                      itemBuilder: (context, i) {
                        return i == 0
                            ? Container(
                                width: width,
                                height: width * 0.34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: width * 0.05,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.1),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Pilih Produk",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    2, 62, 74, 1),
                                                fontFamily: 'Opensansbold',
                                                fontSize: width * 0.034),
                                          )),
                                    ),
                                    Container(
                                      width: width,
                                      height: width * 0.23,
                                      color: Colors.white,
                                      child: Center(
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: width * 0.8,
                                              height: width * 0.15,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromRGBO(
                                                    245, 243, 240, 1),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: width * 0.03,
                                                        left: width * 0.04),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          pulsadata[i].ket,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      2,
                                                                      62,
                                                                      74,
                                                                      1),
                                                              fontFamily:
                                                                  'Opensansbold',
                                                              fontSize: width *
                                                                  0.034),
                                                        ),
                                                        Text(
                                                          "Rp " +
                                                              pulsadata[i]
                                                                  .harganet,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      2,
                                                                      62,
                                                                      74,
                                                                      1),
                                                              fontFamily:
                                                                  'Opensans',
                                                              fontSize:
                                                                  width * 0.03),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: width * 0.02),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.of(context,
                                                                  rootNavigator:
                                                                      true)
                                                              .push(MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Pembayaran()));
                                                        },
                                                        child: Container(
                                                          width: width * 0.15,
                                                          height: width * 0.08,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color:
                                                                Color.fromRGBO(
                                                                    245,
                                                                    130,
                                                                    32,
                                                                    1),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                            "Beli",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                            : Column(
                                children: [
                                  Container(
                                    width: width,
                                    height: width * 0.22,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: width * 0.8,
                                            height: width * 0.15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  245, 243, 240, 1),
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: width * 0.03,
                                                      left: width * 0.04),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        pulsadata[i].ket,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    2,
                                                                    62,
                                                                    74,
                                                                    1),
                                                            fontFamily:
                                                                'Opensansbold',
                                                            fontSize:
                                                                width * 0.034),
                                                      ),
                                                      Text(
                                                        "Rp " +
                                                            pulsadata[i]
                                                                .harganet,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    2,
                                                                    62,
                                                                    74,
                                                                    1),
                                                            fontFamily:
                                                                'Opensans',
                                                            fontSize:
                                                                width * 0.03),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: width * 0.02),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      width: width * 0.15,
                                                      height: width * 0.08,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Color.fromRGBO(
                                                            245, 130, 32, 1),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                        "Beli",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: width * 0.08,
                                  // ),
                                ],
                              );
                      },
                      physics: ClampingScrollPhysics(),
                      itemCount: pulsadata.isEmpty ? 0 : pulsadata.length,
                      shrinkWrap: true,
                    ),
              SizedBox(
                height: width * 0.05,
              ),
            ],
          ),
        ));
  }
}
