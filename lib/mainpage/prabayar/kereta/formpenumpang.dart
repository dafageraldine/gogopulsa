import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../class.dart';

class Formpenumpang extends StatefulWidget {
  @override
  _FormpenumpangState createState() => _FormpenumpangState();
}

class _FormpenumpangState extends State<Formpenumpang> {
  var tgls = "Masukkan Tanggal lahir";
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
                        "FORM PENUMPANG",
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
              height: width * 0.08,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.centerLeft, child: Text("Nama Lengkap")),
            ),
            Container(
                width: width * 0.85,
                height: width * 0.15,
                child: TextFormField()),
            SizedBox(
              height: width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Nomor Identitas")),
            ),
            Container(
                width: width * 0.85,
                height: width * 0.15,
                child: TextFormField()),
            SizedBox(
              height: width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child:
                  Align(alignment: Alignment.centerLeft, child: Text("No HP")),
            ),
            Container(
                width: width * 0.85,
                height: width * 0.15,
                child: TextFormField()),
            SizedBox(
              height: width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Tanggal Lahir")),
            ),
            Padding(
              padding: EdgeInsets.only(top: width * 0.05, left: width * 0.1),
              child: InkWell(
                onTap: () {
                  print("tapped");
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2021),
                          lastDate: DateTime(2100))
                      .then((date) {
                    tgls = DateFormat('d LLL y').format(date);
                    setState(() {});
                  });
                },
                child: Row(
                  children: [
                    Text(
                      tgls,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: 'Opensans',
                          fontSize: width * 0.036),
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
            ),
            Padding(
              padding: EdgeInsets.only(top: width * 0.1),
              child: Container(
                width: width * 0.85,
                height: width * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(245, 130, 32, 1),
                ),
                child: Center(
                    child: Text(
                  "SIMPAN",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.038),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
