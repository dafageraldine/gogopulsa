import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gogopulsa/mainpage/subpagepesanan/batal.dart';
import 'package:gogopulsa/mainpage/subpagepesanan/diproses.dart';
import 'package:gogopulsa/mainpage/subpagepesanan/menunggu.dart';
import 'package:gogopulsa/mainpage/subpagepesanan/semua.dart';

class Pesanan extends StatefulWidget {
  @override
  _PesananState createState() => _PesananState();
}

class _PesananState extends State<Pesanan> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leadingWidth: width * 0.3,
          leading: Padding(
            padding: EdgeInsets.only(left: width * 0.1, top: width * 0.03),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  width: width * 0.15,
                  height: width * 0.1,
                ),
              ],
            ),
          ),
          actions: [
            Row(
              children: [
                Text(
                  "Hubungi\nkami",
                  textAlign: TextAlign.right,
                  style:
                      TextStyle(color: Colors.white, fontSize: width * 0.028),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SvgPicture.asset(
                  "assets/call.svg",
                  width: width * 0.05,
                ),
              ],
            ),
            SizedBox(
              width: width * 0.1,
            )
          ],
          backgroundColor: Color.fromRGBO(242, 101, 126, 1),
          bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              controller: controller,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Semua",
                    style: TextStyle(
                      fontSize: width * 0.028,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Menunggu",
                    style: TextStyle(fontSize: width * 0.028),
                  ),
                ),
                Tab(
                  child: Text(
                    "Batal",
                    style: TextStyle(fontSize: width * 0.028),
                  ),
                ),
                Tab(
                  child: Text(
                    "Diproses",
                    style: TextStyle(fontSize: width * 0.028),
                  ),
                ),
              ]),
        ),
        body: TabBarView(controller: controller, children: <Widget>[
          Semua(),
          Menunggu(),
          Batal(),
          Diproses(),
        ]));
  }
}
