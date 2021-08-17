import 'package:gogopulsa/mainpage/prabayar/kereta/keretaclass.dart';

class Token {
  String access;
  Token(this.access);
}

class Tokenpesawat {
  String access;
  Tokenpesawat(this.access);
}

class Allairline {
  String pesawat;
  String id;
  Allairline(this.pesawat, this.id);
}

class Planeorigin {
  String originID;
  String destinationID;
  String originame;
  String destinationame;
  Planeorigin(
      this.originID, this.destinationID, this.originame, this.destinationame);
}

class Planedestination {
  String originID;
  String destinationID;
  String originame;
  String destinationame;
  Planedestination(
      this.originID, this.destinationID, this.originame, this.destinationame);
}

class Trainorigin {
  String origin;
  String originfull;
  Trainorigin(this.origin, this.originfull);
}

class Traindestination {
  String destination;
  String destinationfull;
  Traindestination(this.destination, this.destinationfull);
}

class Pulsadata {
  String id;
  String kode;
  String hargajual;
  String provider;
  String jenis;
  String ket;
  String nominal;
  String gangguan;
  String tipe;
  String grup;
  String diskon;
  String isdiskon;
  String harganet;
  String badmin;
  Pulsadata(
      this.id,
      this.kode,
      this.hargajual,
      this.provider,
      this.jenis,
      this.ket,
      this.nominal,
      this.gangguan,
      this.tipe,
      this.grup,
      this.diskon,
      this.isdiskon,
      this.harganet,
      this.badmin);
}

class Bookingkereta {
  String bookingkey;
  String orifull;
  String destifull;
  Bookingkereta(this.bookingkey, this.orifull, this.destifull);
}

class Listkereta {
  String trainNumber;
  String trainName;
  String departTime;
  String arrivalTime;
  Listkereta(
      this.trainNumber, this.trainName, this.departTime, this.arrivalTime);
}

class Classeskereta {
  String trainumber;
  String subClass;
  String availabilityStatus;
  String availabilityClass;
  String price;
  String priceperadult;
  Classeskereta(this.trainumber, this.subClass, this.availabilityStatus,
      this.availabilityClass, this.price, this.priceperadult);
}

class Trainclassdata {
  String trainame;
  String trainumber;
  String subClass;
  String availabilityStatus;
  String availabilityClass;
  String price;
  String priceperadult;
  Trainclassdata(
      this.trainame,
      this.trainumber,
      this.subClass,
      this.availabilityStatus,
      this.availabilityClass,
      this.price,
      this.priceperadult);
}

class Datapesankereta {
  String waktu;
  String origin;
  String destination;
  String depart;
  String adult;
  String infant;
  String trainumber;
  String subclass;
  String availclass;
  Datapesankereta(this.waktu, this.origin, this.destination, this.depart,
      this.adult, this.infant, this.trainumber, this.subclass, this.availclass);
}

List<Allairline> allairline = <Allairline>[];
List<Token> accesstoken = <Token>[];
List<Tokenpesawat> accesstokenpesawat = <Tokenpesawat>[];
List<Planedestination> destination = <Planedestination>[];
List<Planeorigin> origins = <Planeorigin>[];
List<Pulsadata> pulsadata = <Pulsadata>[];
List<Trainorigin> kaiorigin = <Trainorigin>[];
List<Traindestination> kaidestination = <Traindestination>[];
List<Bookingkereta> bookedtrain = <Bookingkereta>[];
List<Listkereta> listkereta = <Listkereta>[];
List<Classeskereta> keretaclass = <Classeskereta>[];
List<Trainclassdata> trainclassdata = <Trainclassdata>[];
List<Datapesankereta> datapesankereta = <Datapesankereta>[];

var linkapipesawathotel = "https://61.8.74.42:7080/h2h";
var baseurl = "https://sandbox-api.sakedap.com/ppobtcel/";
int vgadult;
String vgori;
int vginfant;
String vgdesti;
String vgwaktu;
String vgdepart;
