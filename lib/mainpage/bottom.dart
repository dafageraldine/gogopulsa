import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gogopulsa/class.dart';
import 'package:gogopulsa/globaldata.dart';
import 'package:gogopulsa/mainpage/Account.dart';
import 'package:gogopulsa/mainpage/agen.dart';
import 'package:gogopulsa/mainpage/home.dart';
import 'package:gogopulsa/mainpage/kasir.dart';
import 'package:gogopulsa/mainpage/pesanan.dart';
import 'package:gogopulsa/globaldata.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  DateTime backbuttonpressedTime;

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);
    if (backButton) {
      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast(
          msg: "Double Click to exit app",
          backgroundColor: Colors.black,
          textColor: Colors.white);
      return false;
    }
    exit(0);
    return true;
  }

  Future getaccesstoken() async {
    String token = DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now());
    var secure = md5
        .convert(utf8
            .encode(token + md5.convert(utf8.encode("1HHHDUH184")).toString()))
        .toString();

    var body = json.encode(
        {"userID": "1HT8DUH184", "securityCode": secure, "token": token});

    http.Response tes =
        await http.post(Uri.parse(linkapipesawathotel + "/Session/Login"),
            headers: {
              "Content-Type": "application/json",
            },
            body: body);
    accesstoken.clear();
    var tokenz = json.decode(tes.body);
    accesstoken.add(Token(tokenz["accessToken"]));
  }

  var currindex = 0;
  @override
  void initState() {
    getaccesstoken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        // backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(2, 62, 74, 1),
          unselectedItemColor: Color.fromRGBO(203, 208, 223, 1),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: currindex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/homeu.svg"),
              activeIcon: SvgPicture.asset("assets/homes.svg"),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/pesananu.svg"),
              activeIcon: SvgPicture.asset("assets/pesanans.svg"),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/kasiru.svg"),
              activeIcon: SvgPicture.asset("assets/kasirs.svg"),
              label: "Kasir",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/agenu.svg"),
              activeIcon: SvgPicture.asset("assets/agens.svg"),
              label: "Keagenan",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/akunu.svg"),
              activeIcon: SvgPicture.asset("assets/akuns.svg"),
              label: "Akun",
            ),
          ],
          onTap: (botindex) {
            setState(() {
              currindex = botindex;
              // print(index);
            });
          },
        ),
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
            _buildOffstageNavigator(4),
          ],
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [Home(), Pesanan(), Kasir(), Agen(), Account()].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: currindex != index,
      child: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
