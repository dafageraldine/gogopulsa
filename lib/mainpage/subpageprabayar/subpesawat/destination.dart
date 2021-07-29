import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gogopulsa/class.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Destination extends StatefulWidget {
  @override
  _DestinationState createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  var selectedpilihan = origins[0];
  var selected = destination[0];
  int selectedRadio;
  var ctime = "silahkan pilih tanggal";
  var rtime = "silahkan pilih tanggal";

  Future getschedule() async {
    print(selectedRadio);
    // var oid = [];
    var url = linkapipesawathotel + "/Airline/ScheduleAllAirline";
    // print(url);
    var body = {
      "userID": "1HT8DUH184",
      "accessToken": accesstoken[0].access.toString(),
      "tripType": selectedRadio == 1 ? "OneWay" : "RoundTrip",
      "origin": selectedpilihan.originID,
      "destination": selected.destinationID,
      "departdate": ctime,
      "returndate": selectedRadio == 1 ? "" : rtime,
      "paxAdult": "1",
      "paxChild": "0",
      "paxInfant": "0",
      "airlineAccessCode": accesstokenpesawat[0].access,
      "cacheType": "Mix",
      "isShowEachAirline": "false"
    };
    print(body);
    http.Response tes = await http.post(Uri.parse(url),
        // headers: {
        //   "Content-Type": "application/json",
        // },
        body: body);
    // print(tes.body);
    var tokenz = json.decode(tes.body);
    accesstokenpesawat.clear();
    accesstokenpesawat.add(Tokenpesawat(tokenz["airlineAccessCode"]));
    print(tokenz["respMessage"]);
    // destination.clear();
    // for (var i = 0; i < tokenz["routes"].length; i++) {
    //   if (oid.isEmpty) {
    //     oid.add(tokenz["routes"][i]["origin"]);
    //     destination.add(Planedestination(
    //         tokenz["routes"][i]["origin"],
    //         tokenz["routes"][i]["destination"],
    //         tokenz["routes"][i]["originName"],
    //         tokenz["routes"][i]["destinationName"]));
    //   } else if (oid.isNotEmpty) {
    //     if (oid.contains(tokenz["routes"][i]["origin"]) == false) {
    //       oid.add(tokenz["routes"][i]["origin"]);
    //       destination.add(Planedestination(
    //           tokenz["routes"][i]["origin"],
    //           tokenz["routes"][i]["destination"],
    //           tokenz["routes"][i]["originName"],
    //           tokenz["routes"][i]["destinationName"]));
    //     }
    //   }
    // }
    // // print(tokenz["airlines"][0]["name"]);
    accesstoken.clear();
    accesstoken.add(Token(tokenz["accessToken"]));
    // Navigator.of(context, rootNavigator: true)
    //     .push(MaterialPageRoute(builder: (context) => Destination()));
  }

  List<DropdownMenuItem> buildItems(List<Planeorigin> pilihans) {
    List<DropdownMenuItem> items = [];
    for (var item in pilihans) {
      items.add(DropdownMenuItem(
        child: Text(item.originame),
        value: item,
      ));
    }
    return items;
  }

  List<DropdownMenuItem> buildItemsz(List<Planedestination> pilihans) {
    List<DropdownMenuItem> items = [];
    for (var item in pilihans) {
      items.add(DropdownMenuItem(
        child: Text(item.destinationame),
        value: item,
      ));
    }
    return items;
  }

  setSelectedradio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  void initState() {
    // getroute(idpesawat);
    super.initState();
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
                  height: width * 0.4,
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
                      // Text(
                      //   "PESAWAT",
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: width * 0.04,
                      //       fontWeight: FontWeight.w700),
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: width * 0.3),
                  child: Center(
                    child: Container(
                      width: width * 0.9,
                      height: height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: width * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  print(selectedpilihan.originID);
                                },
                                child: Text(
                                  "Pilih Origin",
                                  style: TextStyle(
                                      color: Color.fromRGBO(2, 62, 74, 1),
                                      fontFamily: 'Opensans',
                                      fontSize: width * 0.034),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.8,
                            height: width * 0.2,
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                      dropdownColor:
                                          Color.fromRGBO(229, 229, 229, 1),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Color.fromRGBO(2, 62, 74, 1)),
                                      value: selectedpilihan,
                                      items: buildItems(origins),
                                      onChanged: (item) {
                                        setState(() {
                                          selectedpilihan = item;
                                        });
                                      },
                                    ))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  print(selected.destinationID);
                                },
                                child: Text(
                                  "Pilih Destination",
                                  style: TextStyle(
                                      color: Color.fromRGBO(2, 62, 74, 1),
                                      fontFamily: 'Opensans',
                                      fontSize: width * 0.034),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.85,
                            height: width * 0.2,
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                      dropdownColor:
                                          Color.fromRGBO(229, 229, 229, 1),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.028,
                                          color: Color.fromRGBO(2, 62, 74, 1)),
                                      value: selected,
                                      items: buildItemsz(destination),
                                      onChanged: (item) {
                                        setState(() {
                                          selected = item;
                                        });
                                      },
                                    ))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Trip Type",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.034),
                              ),
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Row(
                                children: <Widget>[
                                  Radio(
                                      value: 1,
                                      groupValue: selectedRadio,
                                      onChanged: (val) {
                                        setSelectedradio(val);
                                      }),
                                  Text(
                                    "OneWay",
                                    style: TextStyle(
                                        color: Color.fromRGBO(2, 62, 74, 1),
                                        fontSize: width * 0.034),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: width * 0.075,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        value: 2,
                                        groupValue: selectedRadio,
                                        onChanged: (val) {
                                          setSelectedradio(val);
                                        }),
                                    Text("RoundTrip",
                                        style: TextStyle(
                                            color: Color.fromRGBO(2, 62, 74, 1),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.034)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Depart Date",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.034),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          InkWell(
                              onTap: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2020),
                                        lastDate: DateTime(2100))
                                    .then((date) {
                                  setState(() {
                                    ctime =
                                        DateFormat('yyyy-MM-dd').format(date);
                                    //  print(ctime);

                                    //  _dateTime = date;
                                  });
                                });
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Text(
                                    ctime,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: width * 0.034,
                                      fontFamily: 'Opensansbold',
                                      // fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Icon(Icons.calendar_today)
                                ],
                              )),
                          SizedBox(
                            height: width * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Return Date",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.034),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          InkWell(
                              onTap: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2020),
                                        lastDate: DateTime(2100))
                                    .then((date) {
                                  setState(() {
                                    rtime =
                                        DateFormat('yyyy-MM-dd').format(date);
                                    //  print(ctime);

                                    //  _dateTime = date;
                                  });
                                });
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Text(
                                    rtime,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: width * 0.034,
                                      fontFamily: 'Opensansbold',
                                      // fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Icon(Icons.calendar_today)
                                ],
                              )),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Adult",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.034),
                              ),
                            ),
                          ),
                          Container(
                            height: width * 0.15,
                            width: width * 0.75,
                            child: TextFormField(
                              // controller: tema,
                              decoration: InputDecoration(
                                  labelText: "ex : 1",
                                  labelStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034)),
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
                                "child",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.034),
                              ),
                            ),
                          ),
                          Container(
                            height: width * 0.15,
                            width: width * 0.75,
                            child: TextFormField(
                              // controller: tema,
                              decoration: InputDecoration(
                                  labelText: "ex : 1",
                                  labelStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034)),
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
                                "Infant",
                                style: TextStyle(
                                    color: Color.fromRGBO(2, 62, 74, 1),
                                    fontFamily: 'Opensans',
                                    fontSize: width * 0.034),
                              ),
                            ),
                          ),
                          Container(
                            height: width * 0.15,
                            width: width * 0.75,
                            child: TextFormField(
                              // controller: tema,
                              decoration: InputDecoration(
                                  labelText: "ex : 1",
                                  labelStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034)),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              getschedule();
                            },
                            child: Container(
                              width: width * 0.65,
                              height: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(0, 142, 151, 1),
                              ),
                              child: Center(
                                  child: Text(
                                "Cari Penerbangan",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04,
                                    fontFamily: 'Opensansbold',
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: width * 0.1,
            // ),
            // // Text("Silahkan pilih maskapai"),
            // SizedBox(
            //   height: width * 0.1,
            // ),

            // Text("Silahkan pilih maskapai"),
            // SizedBox(
            //   height: 20,
            // ),

            // ListView.builder(
            //   itemBuilder: (c, i) {
            //     return Column(
            //       children: [
            //         InkWell(
            //           onTap: () {
            //             getroute(allairline[i].id);
            //           },
            //           child: Container(
            //             width: width * 0.8,
            //             height: width * 0.3,
            //             color: Colors.white,
            //             child: Text(allairline[i].pesawat),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         )
            //       ],
            //     );
            //   },
            //   itemCount: allairline.isEmpty ? 0 : allairline.length,
            //   // scrollDirection: Axis.v,
            //   shrinkWrap: true,
            //   physics: ClampingScrollPhysics(),
            // )
            SizedBox(
              height: width * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
