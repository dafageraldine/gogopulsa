import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
              height: height * 0.15,
              color: Color.fromRGBO(0, 142, 151, 1),
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.1, top: width * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "KELOLA AKUN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.1),
                      child: Row(
                        children: [
                          Text(
                            "Hubungi\nkami",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.028),
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
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width * 0.85,
              height: width * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: width * 0.1,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.network(
                      "https://dm.henkel-dam.com/is/image/henkel/men_perfect_com_thumbnails_home_pack_400x400-wcms-international?scl=1&fmt=jpg",
                      height: width * 0.15,
                      width: width * 0.15,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: width * 0.08),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toko Rio Cell",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensans',
                              fontSize: width * 0.03),
                        ),
                        Text(
                          "081234567890",
                          style: TextStyle(
                              color: Color.fromRGBO(2, 62, 74, 1),
                              fontFamily: 'Opensansbold',
                              fontSize: width * 0.034),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.17,
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                        color: Color.fromRGBO(73, 84, 180, 1),
                        fontFamily: 'Opensans',
                        fontSize: width * 0.034),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width * 0.85,
              height: height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      SvgPicture.asset(
                        "assets/lock.svg",
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Verifikasi Akun",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text("Lengkapi dokumen anda",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensans',
                                  fontSize: width * 0.026))
                        ],
                      ),
                      SizedBox(
                        width: width * 0.19,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      SvgPicture.asset(
                        "assets/riw.svg",
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Riwayat Transaksi",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text("Anda dapat melihat transaksi terakhir",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensans',
                                  fontSize: width * 0.026))
                        ],
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      SvgPicture.asset(
                        "assets/stg.svg",
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pengaturan Toko",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text("Atur Layanan & Informasi toko anda",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensans',
                                  fontSize: width * 0.026))
                        ],
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      SvgPicture.asset(
                        "assets/info.svg",
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Informasi",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text("Lihat semua informasi",
                              style: TextStyle(
                                  color: Color.fromRGBO(2, 62, 74, 1),
                                  fontFamily: 'Opensans',
                                  fontSize: width * 0.026))
                        ],
                      ),
                      SizedBox(
                        width: width * 0.22,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      SvgPicture.asset(
                        "assets/privacy.svg",
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Syarat & Ketentuan",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensansbold',
                                fontSize: width * 0.034),
                          ),
                          Text(
                            "Lihat semua syarat & ketentuan",
                            style: TextStyle(
                                color: Color.fromRGBO(2, 62, 74, 1),
                                fontFamily: 'Opensans',
                                fontSize: width * 0.026),
                          )
                        ],
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width * 0.85,
              height: width * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(
                    "assets/logout.svg",
                    width: width * 0.1,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Keluar Akun",
                    style: TextStyle(
                        color: Color.fromRGBO(2, 62, 74, 1),
                        fontFamily: 'Opensansbold',
                        fontSize: width * 0.04),
                  ),
                  SizedBox(
                    width: width * 0.24,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        )));
  }
}
