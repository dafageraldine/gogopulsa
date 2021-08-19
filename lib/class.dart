import 'package:gogopulsa/mainpage/prabayar/kereta/keretaclass.dart';

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

//KERETA
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

class Penumpangkereta {
  String nama;
  String id;
  String hp;
  String birth;
  String type;
  Penumpangkereta(this.nama, this.id, this.hp, this.birth, this.type);

  Map toJson() => {
        "IDNumber": id,
        "name": nama,
        "birthDate": birth,
        "phone": hp,
        "type": type
      };
}

class Pemesan {
  String nama;
  String hp;
  Pemesan(this.nama, this.hp);
}

class Penumpangkeretaseat {
  String nama;
  String id;
  String birth;
  String seatnumber;
  String wagonumber;
  String wagoncode;
  String type;
  String phone;
  Penumpangkeretaseat(this.nama, this.id, this.birth, this.seatnumber,
      this.wagonumber, this.wagoncode, this.type, this.phone);

  Map toJson() => {
        "name": nama,
        "ID": id,
        "birthDate": birth,
        "seatNumber": seatnumber,
        "wagonNumber": wagonumber,
        "wagonCode": wagoncode,
        "type": type,
        "phone": phone
      };
}

class Bookedkeretadata {
  String bookingkey;
  String trainID;
  String origin;
  String originFull;
  String destination;
  String destinationFull;
  String trainNumber;
  String subClass;
  String availabilityClass;
  String bookingCode;
  String bookingDate;
  String issuedTimeLimit;
  String trainName;
  String departTime;
  String arrivalTime;
  String ticketPrice;
  String salesPrice;
  String adminFee;
  String trainMarkup;
  String discount;
  Bookedkeretadata(
      this.bookingkey,
      this.trainID,
      this.origin,
      this.originFull,
      this.destination,
      this.destinationFull,
      this.trainNumber,
      this.subClass,
      this.availabilityClass,
      this.bookingCode,
      this.bookingDate,
      this.issuedTimeLimit,
      this.trainName,
      this.departTime,
      this.arrivalTime,
      this.ticketPrice,
      this.salesPrice,
      this.adminFee,
      this.trainMarkup,
      this.discount);

  Map toJson() => {
        "bookingKeyRequest": bookingkey,
        "trainID": trainID,
        "origin": origin,
        "originFull": originFull,
        "destination": destination,
        "destinationFull": destinationFull,
        "trainNumber": trainNumber,
        "subClass": subClass,
        "availabilityClass": availabilityClass,
        "bookingCode": bookingCode,
        "bookingDate": bookingDate,
        "issuedTimeLimit": issuedTimeLimit,
        "trainName": trainName,
        "departTime": departTime,
        "arrivalTime": arrivalTime,
        "ticketPrice": ticketPrice,
        "salesPrice": salesPrice,
        "adminFee": adminFee,
        "trainMarkup": trainMarkup,
        "discount": discount
      };
}

class Keretaseatdata {
  String wagonCode;
  String wagonNumber;
  int row;
  int column;
  int seatrow;
  String seatcolumn;
  String seatnumber;
  String subclass;
  String isavaliable;
  Keretaseatdata(
      this.wagonCode,
      this.wagonNumber,
      this.row,
      this.column,
      this.seatrow,
      this.seatcolumn,
      this.seatnumber,
      this.subclass,
      this.isavaliable);
}

List<Pulsadata> pulsadata = <Pulsadata>[];

//Kereta
List<Trainorigin> kaiorigin = <Trainorigin>[];
List<Traindestination> kaidestination = <Traindestination>[];
List<Bookingkereta> bookedtrain = <Bookingkereta>[];
List<Listkereta> listkereta = <Listkereta>[];
List<Classeskereta> keretaclass = <Classeskereta>[];
List<Trainclassdata> trainclassdata = <Trainclassdata>[];
List<Datapesankereta> datapesankereta = <Datapesankereta>[];
List<Penumpangkereta> datapenumpangkereta = <Penumpangkereta>[];
List<Pemesan> datapemesan = <Pemesan>[];
List<Penumpangkeretaseat> seatpenumpangkereta = <Penumpangkeretaseat>[];
List<Bookedkeretadata> databookedkereta = <Bookedkeretadata>[];
List<Keretaseatdata> dataseatkereta = <Keretaseatdata>[];

var baseurl = "https://sandbox-api.sakedap.com/ppobtcel/";
int vgadult;
String vgori;
int vginfant;
String vgdesti;
String vgwaktu;
String vgdepart;
