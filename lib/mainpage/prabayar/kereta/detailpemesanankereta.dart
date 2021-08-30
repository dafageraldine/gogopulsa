import 'dart:convert';
import 'dart:io';
import 'package:gogopulsa/mainpage/prabayar/kereta/checkout.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/datapemesan.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/formpenumpang.dart';

class Detailpemesanankereta extends StatefulWidget {
  @override
  _DetailpemesanankeretaState createState() => _DetailpemesanankeretaState();
}

class _DetailpemesanankeretaState extends State<Detailpemesanankereta> {
  createbooking() async {
    var body = {
      "bookingKeyRequest": bookedtrain[0].bookingkey,
      "trainID": "KAI",
      "origin": datapesankereta[0].origin,
      "destination": datapesankereta[0].destination,
      "departDate": datapesankereta[0].depart,
      "paxAdult": vgadult.toString(),
      "pakChild": "0",
      "paxInfant": vginfant.toString(),
      "trainNumber": datapesankereta[0].trainumber,
      "contactName": datapemesan[0].nama,
      "contactPhone": datapemesan[0].hp,
      "subClass": datapesankereta[0].subclass,
      "availabilityClass": datapesankereta[0].availclass,
      "passengers": datapenumpangkereta
    };
    String bodyenc = jsonEncode(body);
    var url = baseurl + 'public/api/data/kereta/booking';
    http.Response ceks = await http.post(Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          'apiKey':
              '632e93023886160a2a5494cd49aeb72994fc61f6834355d175a423b99715a9df',
        },
        body: bodyenc);
    var data = json.decode(ceks.body);
    print(data['data']['bookingKeyRequest']);
    databookedkereta.clear();
    databookedkereta.add(Bookedkeretadata(
      data['data']['bookingKeyRequest'],
      data['data']['trainID'],
      data['data']['origin'],
      data['data']['originFull'],
      data['data']['destination'],
      data['data']['destinationFull'],
      data['data']['trainNumber'],
      data['data']['subClass'],
      data['data']['availabilityClass'],
      data['data']['bookingCode'],
      data['data']['bookingDate'],
      data['data']['issuedTimeLimit'],
      data['data']['trainName'],
      data['data']['departTime'],
      data['data']['arrivalTime'],
      data['data']['ticketPrice'].toString(),
      data['data']['salesPrice'].toString(),
      data['data']['adminFee'].toString(),
      data['data']['trainMarkup'].toString(),
      data['data']['discount'].toString(),
    ));
    seatpenumpangkereta.clear();
    for (var i = 0; i < data['data']['passengers'].length; i++) {
      seatpenumpangkereta.add(Penumpangkeretaseat(
          data['data']['passengers'][i]['name'],
          data['data']['passengers'][i]['ID'].toString(),
          data['data']['passengers'][i]['birthDate'],
          data['data']['passengers'][i]['seatNumber'],
          data['data']['passengers'][i]['wagonNumber'],
          data['data']['passengers'][i]['wagonCode'],
          data['data']['passengers'][i]['type'],
          data['data']['passengers'][i]['phone']));
    }
    getseatmap();
  }

  getseatmap() async {
    var body = {
      "origin": databookedkereta[0].origin,
      "destination": databookedkereta[0].destination,
      "departDate": databookedkereta[0].departTime,
      "trainNumber": databookedkereta[0].trainNumber,
      "subClass": databookedkereta[0].subClass,
      "paxAdult": vgadult.toString(),
      "paxChild": "0",
      "paxInfant": vginfant.toString(),
      "bookingKeyRequest": databookedkereta[0].bookingkey,
      "bookingCode": databookedkereta[0].bookingCode,
      "bookingDate": databookedkereta[0].bookingDate.split('T')[0]
    };
    var url = baseurl + 'public/api/data/kereta/seatmap';
    http.Response ceks = await http.post(Uri.parse(url),
        headers: {
          // HttpHeaders.contentTypeHeader: "application/json",
          'apiKey':
              '632e93023886160a2a5494cd49aeb72994fc61f6834355d175a423b99715a9df',
        },
        body: body);
    var data = json.decode(ceks.body);
    print(data);
    dataseatkereta.clear();
    for (var i = 0; i < data['data']['seats'].length; i++) {
      for (var j = 0; j < data['data']['seats'][i]['detail'].length; j++) {
        dataseatkereta.add(Keretaseatdata(
            data['data']['seats'][i]['wagonCode'],
            data['data']['seats'][i]['wagonNumber'],
            data['data']['seats'][i]['detail'][j]['row'],
            data['data']['seats'][i]['detail'][j]['column'],
            int.parse(data['data']['seats'][i]['detail'][j]['seatRow']),
            data['data']['seats'][i]['detail'][j]['seatColumn'],
            data['data']['seats'][i]['detail'][j]['seatNumber'],
            data['data']['seats'][i]['detail'][j]['subClass'],
            data['data']['seats'][i]['detail'][j]['isAvailable'].toString()));
        print(data['data']['seats'][i]['detail'][j]['seatColumn']);
      }
    }

    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => Checkout()));
  }

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
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.55, top: width * 0.03),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) => Datapemesan()));
                          },
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
                      ),
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
                                      datapenumpangkereta.isEmpty
                                          ? "Nama : "
                                          : datapenumpangkereta.length >= i + 1
                                              ? "Nama : " +
                                                  datapenumpangkereta[i].nama
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
                                      datapenumpangkereta.isEmpty
                                          ? "ID : "
                                          : datapenumpangkereta.length >= i + 1
                                              ? "ID : " +
                                                  datapenumpangkereta[i].id
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
                                      datapenumpangkereta.isEmpty
                                          ? "Tanggal Lahir : "
                                          : datapenumpangkereta.length >= i + 1
                                              ? "Tanggal Lahir : " +
                                                  datapenumpangkereta[i].birth
                                              : "Tanggal Lahir : ",
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
                                          datapenumpangkereta.isEmpty
                                              ? "No HP : "
                                              : datapenumpangkereta.length >=
                                                      i + 1
                                                  ? "No HP : " +
                                                      datapenumpangkereta[i].hp
                                                  : "No HP : ",
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
            InkWell(
              onTap: () {
                createbooking();
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
                  "Lanjut",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.038),
                )),
              ),
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
