import 'package:flutter/material.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/mainpage/prabayar/kereta/detailpemesanankereta.dart';

class Datapemesan extends StatefulWidget {
  @override
  _DatapemesanState createState() => _DatapemesanState();
}

class _DatapemesanState extends State<Datapemesan> {
  TextEditingController nama = new TextEditingController();
  TextEditingController hp = new TextEditingController();

  adddatapemesan() {
    datapemesan.clear();
    datapemesan.add(Pemesan(nama.text, hp.text));
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => Detailpemesanankereta()));
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
                        "DATA PEMESAN",
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
                child: TextFormField(
                  controller: nama,
                )),
            SizedBox(
              height: width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Align(
                  alignment: Alignment.centerLeft, child: Text("Nomor HP")),
            ),
            Container(
                width: width * 0.85,
                height: width * 0.15,
                child: TextFormField(
                  controller: hp,
                )),
            Padding(
              padding: EdgeInsets.only(top: width * 0.1),
              child: InkWell(
                onTap: () {
                  adddatapemesan();
                  // addpenumpang();
                },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
