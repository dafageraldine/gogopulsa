import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/pascabayar/bpjs.dart';
import 'package:gogopulsa/mainpage/prabayar/dataseluler.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/keretaapi.dart';
import 'package:gogopulsa/mainpage/prabayar/plntoken.dart';
import 'package:gogopulsa/mainpage/prabayar/subpulsaseluler/pulsaseluler.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future getkairoute() async {
    var oid = [];
    var did = [];
    var url = baseurl + "public/api/data/kereta/routes";
    http.Response ceks = await http.get(
      Uri.parse(url),
      headers: {
        // "Content-Type": "application/x-www-form-urlencoded",
        'apiKey':
            '632e93023886160a2a5494cd49aeb72994fc61f6834355d175a423b99715a9df',
      },
    );
    var data = json.decode(ceks.body);
    print(data);
    kaiorigin.clear();
    kaidestination.clear();
    for (var i = 0; i < data["data"].length; i++) {
      if (oid.isEmpty) {
        oid.add(data['data'][i]['origin']);
        kaiorigin.add(Trainorigin(
            data['data'][i]['origin'], data['data'][i]['originFull']));
      }
      if (did.isEmpty) {
        did.add(data['data'][i]['destination']);
        kaidestination.add(Traindestination(data['data'][i]['destination'],
            data['data'][i]['destinationFull']));
      }
      if (did.isNotEmpty) {
        if (did.contains(data["data"][i]["destination"]) == false) {
          did.add(data['data'][i]['destination']);
          kaidestination.add(Traindestination(data['data'][i]['destination'],
              data['data'][i]['destinationFull']));
        }
      }
      if (oid.isNotEmpty) {
        if (oid.contains(data["data"][i]["origin"]) == false) {
          oid.add(data['data'][i]['origin']);
          kaiorigin.add(Trainorigin(
              data['data'][i]['origin'], data['data'][i]['originFull']));
        }
      }
    }
    kaiorigin.sort((a, b) {
      return a.originfull.toLowerCase().compareTo(b.originfull.toLowerCase());
    });
    kaidestination.sort((a, b) {
      return a.destinationfull
          .toLowerCase()
          .compareTo(b.destinationfull.toLowerCase());
    });
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
                  height: height * 0.45,
                  color: Color.fromRGBO(0, 142, 151, 1),
                  // child: ,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, top: height * 0.06),
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.15,
                        height: width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: width * 0.08,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: width * 0.08,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, top: height * 0.15),
                  child: Container(
                    width: width * 0.8,
                    height: width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: width * 0.015,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.02),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Masuk atau Daftar untuk mulai transaksi",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensans',
                                  fontSize: width * 0.03),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                          endIndent: width * 0.02,
                          indent: width * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: width * 0.35,
                              height: width * 0.12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    width: 2),
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Text(
                                "MASUK",
                                style: TextStyle(
                                    color: Color.fromRGBO(245, 130, 32, 1),
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              )),
                            ),
                            Container(
                              width: width * 0.35,
                              height: width * 0.12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromRGBO(245, 130, 32, 1),
                              ),
                              child: Center(
                                  child: Text(
                                "DAFTAR",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Opensansbold',
                                    fontSize: width * 0.034),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, top: height * 0.32),
                  child: Container(
                    width: width * 0.8,
                    height: width * 0.38,

                    // color: Colors.blue,
                    child: Image(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_CsFbpQZthVUjWWsw7M4Z4aFl3e6sVR3JzA&usqp=CAU"
                            // "https://d17e22l2uh4h4n.cloudfront.net/corpweb/pub-xlaxiata/2020-04/1180%20x%20480-01_0.jpg"
                            )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width,
              height: width * 0.8,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.05, top: height * 0.02),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Alat Warung",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensansbold',
                              fontSize: width * 0.034),
                        )),
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/cu.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Catat Utang",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/kw.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Kasir Warung",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/ahj.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Atur Harga\nJual",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/at.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Agen\nTerdekat",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/wo.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Warung\nOnline",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width,
              height: width * 1.1,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.05, top: height * 0.02),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Prabayar",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensansbold',
                              fontSize: width * 0.034),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              pulsadata.clear();
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) => Dataseluler()));
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/dt.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Data",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              pulsadata.clear();
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) => Pulsaseluler()));
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/ps.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Pulsa Seluler",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              pulsadata.clear();
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) => Plntoken()));
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/tp.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Token PLN",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              print("tapped");
                              await getkairoute();
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) => Keretaapi()));
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/kai.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "KAI",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // getpesawat();
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/pes.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Pesawat",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // gethotel();
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/hot.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Hotel",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/pelni.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "PELNI",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/bus.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "BUS",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/tra.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Travel",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width,
              height: width * 1.1,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.05, top: height * 0.02),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Pascabayar",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensansbold',
                              fontSize: width * 0.034),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/pass.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Pascabayar\nSeluler",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/tpln.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Tagihan PLN",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/pgn.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Perusahaan\nGas Negara",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              pulsadata.clear();
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) => BPJS()));
                            },
                            child: Container(
                              width: width * 0.18,
                              height: width * 0.18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[300], width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/bpjs.svg",
                                      width: width * 0.1,
                                      height: width * 0.1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "BPJS",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/pdam.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "PDAM",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/tv.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "TV\nBerlangganan",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/telkom.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Telkom",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/multi.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Multifinance",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/pk.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "Pajak\nKendaraan",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 0.18,
                            height: width * 0.18,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey[300], width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/pbb.svg",
                                    width: width * 0.1,
                                    height: width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text(
                            "PBB",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.03),
                          ),
                          SizedBox(
                            height: width * 0.04,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
