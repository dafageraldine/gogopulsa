import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/subpageprabayar/subpesawat/destination.dart';
import 'package:http/http.dart' as http;

class Pesawat extends StatefulWidget {
  @override
  _PesawatState createState() => _PesawatState();
}

class _PesawatState extends State<Pesawat> {
  Future getroute(String idpesawat) async {
    var oid = [];
    var did = [];
    var url = linkapipesawathotel + "/Airline/Route";
    print(url);
    var body = {
      "userID": "1HT8DUH184",
      "accessToken": accesstoken[0].access.toString(),
      "airlineID": idpesawat
    };
    http.Response tes = await http.post(Uri.parse(url),
        // headers: {
        //   "Content-Type": "application/json",
        // },
        body: body);
    print(tes.body);
    var tokenz = json.decode(tes.body);
    origins.clear();
    destination.clear();
    for (var i = 0; i < tokenz["routes"].length; i++) {
      if (oid.isEmpty) {
        oid.add(tokenz["routes"][i]["origin"]);
        origins.add(Planeorigin(
            tokenz["routes"][i]["origin"],
            tokenz["routes"][i]["destination"],
            tokenz["routes"][i]["originName"],
            tokenz["routes"][i]["destinationName"]));
      }
      if (did.isEmpty) {
        did.add(tokenz["routes"][i]["destination"]);
        destination.add(Planedestination(
            tokenz["routes"][i]["origin"],
            tokenz["routes"][i]["destination"],
            tokenz["routes"][i]["originName"],
            tokenz["routes"][i]["destinationName"]));
      }
      if (did.isNotEmpty) {
        if (did.contains(tokenz["routes"][i]["destination"]) == false) {
          did.add(tokenz["routes"][i]["destination"]);
          destination.add(Planedestination(
              tokenz["routes"][i]["origin"],
              tokenz["routes"][i]["destination"],
              tokenz["routes"][i]["originName"],
              tokenz["routes"][i]["destinationName"]));
        }
      }
      if (oid.isNotEmpty) {
        if (oid.contains(tokenz["routes"][i]["origin"]) == false) {
          oid.add(tokenz["routes"][i]["origin"]);
          origins.add(Planeorigin(
              tokenz["routes"][i]["origin"],
              tokenz["routes"][i]["destination"],
              tokenz["routes"][i]["originName"],
              tokenz["routes"][i]["destinationName"]));
        }
      }
    }
    // print(tokenz["airlines"][0]["name"]);
    accesstoken.clear();
    accesstoken.add(Token(tokenz["accessToken"]));
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => Destination()));
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
            Container(
              width: width,
              height: width * 0.28,
              color: Color.fromRGBO(0, 142, 151, 1),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: width * 0.12,
                      height: width * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Color.fromRGBO(242, 101, 126, 1),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Text(
                    "PESAWAT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Silahkan pilih maskapai"),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemBuilder: (c, i) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        getroute(allairline[i].id);
                      },
                      child: Container(
                        width: width * 0.8,
                        height: width * 0.3,
                        color: Colors.white,
                        child: Text(allairline[i].pesawat),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
              itemCount: allairline.isEmpty ? 0 : allairline.length,
              // scrollDirection: Axis.v,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            )
          ],
        ),
      ),
    );
  }
}
