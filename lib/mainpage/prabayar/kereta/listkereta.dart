import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/keretaclass.dart';

class Keretacard extends StatefulWidget {
  @override
  _KeretacardState createState() => _KeretacardState();
}

class _KeretacardState extends State<Keretacard> {
  filltrainclass(String kereta, String nokereta) {
    trainclassdata.clear();
    for (var i = 0; i < listkereta.length; i++) {
      if (nokereta == keretaclass[i].trainumber) {
        print(nokereta);
        print(keretaclass[i].trainumber);
        trainclassdata.add(Trainclassdata(
            kereta,
            nokereta,
            keretaclass[i].subClass,
            keretaclass[i].availabilityStatus,
            keretaclass[i].availabilityClass,
            keretaclass[i].price,
            keretaclass[i].priceperadult));
      }
    }
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
                // child: ,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.1, top: height * 0.06),
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
                      "PILIH KERETA",
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
            padding: EdgeInsets.only(top: width * 0.05, left: width * 0.1),
            child: Row(
              children: [
                Text(
                  "Dari : ",
                  style: TextStyle(
                      color: Color.fromRGBO(2, 62, 74, 1),
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.034),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  bookedtrain[0].orifull,
                  style: TextStyle(
                      color: Color.fromRGBO(2, 62, 74, 1),
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.034),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: width * 0.02, left: width * 0.1),
            child: Row(
              children: [
                Text(
                  "Ke : ",
                  style: TextStyle(
                      color: Color.fromRGBO(2, 62, 74, 1),
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.034),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  bookedtrain[0].destifull,
                  style: TextStyle(
                      color: Color.fromRGBO(2, 62, 74, 1),
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.034),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: width * 0.02, left: width * 0.1),
            child: Row(
              children: [
                Text(
                  "Tanggal : " + listkereta[0].departTime.split('T')[0],
                  style: TextStyle(
                      color: Color.fromRGBO(2, 62, 74, 1),
                      fontFamily: 'Opensansbold',
                      fontSize: width * 0.034),
                ),
                // SizedBox(
                //   width: width * 0.05,
                // ),
                // Text(
                //   bookedtrain[0].destifull,
                //   style: TextStyle(
                //       color: Color.fromRGBO(2, 62, 74, 1),
                //       fontFamily: 'Opensansbold',
                //       fontSize: width * 0.034),
                // )
              ],
            ),
          ),
          ListView.builder(
            itemBuilder: (c, i) {
              var data = listkereta[i].departTime.split('T');
              var datas = listkereta[i].arrivalTime.split('T');
              return Column(
                children: [
                  InkWell(
                    onTap: () async {
                      await filltrainclass(
                          listkereta[i].trainName, listkereta[i].trainNumber);
                      vgwaktu = data[1] + " - " + datas[1];
                      vgdepart = data[0];
                      print(vgwaktu);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => Trainclass()));
                    },
                    child: Container(
                      width: width,
                      height: width * 0.2,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.85, top: width * 0.04),
                            child: Icon(
                              Icons.navigate_next,
                              size: width * 0.08,
                              color: Color.fromRGBO(2, 62, 74, 1),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: width * 0.02, left: width * 0.05),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/rail.svg",
                                      width: width * 0.05,
                                    ),
                                    Text(
                                      " " +
                                          listkereta[i].trainName +
                                          " " +
                                          listkereta[i].trainNumber,
                                      style: TextStyle(
                                          color: Color.fromRGBO(2, 62, 74, 1),
                                          fontFamily: 'Opensansbold',
                                          fontSize: width * 0.034),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: width * 0.02, left: width * 0.05),
                                child: Row(
                                  children: [
                                    Text(
                                      data[1],
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.w600,
                                          // fontFamily: 'Opensansbold',
                                          fontSize: width * 0.034),
                                    ),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.w600,
                                          // fontFamily: 'Opensansbold',
                                          fontSize: width * 0.034),
                                    ),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Text(
                                      datas[1],
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.w600,
                                          // fontFamily: 'Opensansbold',
                                          fontSize: width * 0.034),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                thickness: 2,
                                height: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: width * 0.05,
                  // )
                ],
              );
            },
            shrinkWrap: true,
            itemCount: listkereta.isEmpty ? 0 : listkereta.length,
            physics: ClampingScrollPhysics(),
          ),
        ],
      )),
    );
  }
}
