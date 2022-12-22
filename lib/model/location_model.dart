class SectorResponseModel {
  Data? data;
  SectorResponseModel({ this.data,});

  factory SectorResponseModel.fromJson(Map<String, dynamic> json) => SectorResponseModel(
    data: Data.fromJson(json["data"]),
  );
}

class Data {
  FlightSector? flightSector;
  Data({this.flightSector,});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    flightSector: FlightSector.fromJson(json["FlightSector"]),
  );
}

class FlightSector {
  List<Sector>? sector;
  FlightSector({  this.sector,});

  factory FlightSector.fromJson(Map<String, dynamic> json) => FlightSector(
    sector: List<Sector>.from(json["Sector"].map((x) => Sector.fromJson(x))),
  );
}

class Sector {
  List<String> sectorCode;
  List<String> sectorName;
  Sector({ required this.sectorCode,required this.sectorName, });

  factory Sector.fromJson(Map<String, dynamic> json) => Sector(
    sectorCode: List<String>.from(json["SectorCode"].map((x) => x)),
    sectorName: List<String>.from(json["SectorName"].map((x) => x)),
  );
}
