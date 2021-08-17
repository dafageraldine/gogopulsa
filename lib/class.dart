import 'package:gogopulsa/mainpage/prabayar/kereta/keretaclass.dart';

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

List<Pulsadata> pulsadata = <Pulsadata>[];
List<Trainorigin> kaiorigin = <Trainorigin>[];
List<Traindestination> kaidestination = <Traindestination>[];
List<Bookingkereta> bookedtrain = <Bookingkereta>[];
List<Listkereta> listkereta = <Listkereta>[];
List<Classeskereta> keretaclass = <Classeskereta>[];
List<Trainclassdata> trainclassdata = <Trainclassdata>[];
List<Datapesankereta> datapesankereta = <Datapesankereta>[];
List<Penumpangkereta> datapenumpangkereta = <Penumpangkereta>[];
List<Pemesan> datapemesan = <Pemesan>[];

var baseurl = "https://sandbox-api.sakedap.com/ppobtcel/";
int vgadult;
String vgori;
int vginfant;
String vgdesti;
String vgwaktu;
String vgdepart;
