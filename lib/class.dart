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

List<Allairline> allairline = <Allairline>[];
List<Token> accesstoken = <Token>[];
List<Tokenpesawat> accesstokenpesawat = <Tokenpesawat>[];
List<Planedestination> destination = <Planedestination>[];
List<Planeorigin> origins = <Planeorigin>[];
List<Pulsadata> pulsadata = <Pulsadata>[];
List<Trainorigin> kaiorigin = <Trainorigin>[];
List<Traindestination> kaidestination = <Traindestination>[];

var linkapipesawathotel = "https://61.8.74.42:7080/h2h";
var baseurl = "https://sandbox-api.sakedap.com/ppobtcel/";
