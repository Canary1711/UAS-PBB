class team {
  int id;
  Area area;
  List<ActiveCompetitions> activeCompetitions;
  String name;
  String shortName;
  String tla;
  String crestUrl;
  String address;
  String phone;
  String website;
  String email;
  int founded;
  String clubColors;
  String venue;
  List<Squad> squad;
  String lastUpdated;

  team(
      {this.id,
      this.area,
      this.activeCompetitions,
      this.name,
      this.shortName,
      this.tla,
      this.crestUrl,
      this.address,
      this.phone,
      this.website,
      this.email,
      this.founded,
      this.clubColors,
      this.venue,
      this.squad,
      this.lastUpdated});

  team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    area = json['area'] != null ? new Area.fromJson(json['area']) : null;
    if (json['activeCompetitions'] != null) {
      activeCompetitions = new List<ActiveCompetitions>();
      json['activeCompetitions'].forEach((v) {
        activeCompetitions.add(new ActiveCompetitions.fromJson(v));
      });
    }
    name = json['name'];
    shortName = json['shortName'];
    tla = json['tla'];
    crestUrl = json['crestUrl'];
    address = json['address'];
    phone = json['phone'];
    website = json['website'];
    email = json['email'];
    founded = json['founded'];
    clubColors = json['clubColors'];
    venue = json['venue'];
    if (json['squad'] != null) {
      squad = new List<Squad>();
      json['squad'].forEach((v) {
        squad.add(new Squad.fromJson(v));
      });
    }
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.area != null) {
      data['area'] = this.area.toJson();
    }
    if (this.activeCompetitions != null) {
      data['activeCompetitions'] =
          this.activeCompetitions.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['tla'] = this.tla;
    data['crestUrl'] = this.crestUrl;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['website'] = this.website;
    data['email'] = this.email;
    data['founded'] = this.founded;
    data['clubColors'] = this.clubColors;
    data['venue'] = this.venue;
    if (this.squad != null) {
      data['squad'] = this.squad.map((v) => v.toJson()).toList();
    }
    data['lastUpdated'] = this.lastUpdated;
    return data;
  }
}

class Area {
  int id;
  String name;

  Area({this.id, this.name});

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class ActiveCompetitions {
  int id;
  Area area;
  String name;
  String code;
  String plan;
  String lastUpdated;

  ActiveCompetitions(
      {this.id, this.area, this.name, this.code, this.plan, this.lastUpdated});

  ActiveCompetitions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    area = json['area'] != null ? new Area.fromJson(json['area']) : null;
    name = json['name'];
    code = json['code'];
    plan = json['plan'];
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.area != null) {
      data['area'] = this.area.toJson();
    }
    data['name'] = this.name;
    data['code'] = this.code;
    data['plan'] = this.plan;
    data['lastUpdated'] = this.lastUpdated;
    return data;
  }
}

class Squad {
  int id;
  String name;
  String position;
  String countryOfBirth;
  String nationality;
  String role;

  Squad(
      {this.id,
      this.name,
      this.position,
      this.countryOfBirth,
      this.nationality,
      this.role});

  Squad.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    countryOfBirth = json['countryOfBirth'];
    nationality = json['nationality'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['position'] = this.position;
    data['countryOfBirth'] = this.countryOfBirth;
    data['nationality'] = this.nationality;
    data['role'] = this.role;
    return data;
  }
}
