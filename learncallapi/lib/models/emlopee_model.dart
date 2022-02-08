class Emlopees {
  List<Emlopee> items = [];

  Emlopees();

  Emlopees.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Emlopee.fromJson(item);
      items.add(pelicula);
    }
  }
}

class Emlopee {
  int? ResultId;
  String? ClassG;
  String? ClassI;

  Emlopee({
    this.ResultId,
    this.ClassG,
    this.ClassI,
  });

  Emlopee.fromJson(Map<dynamic, dynamic> json) {
    ResultId = json['ResultId'];
    ClassG = json['ClassG'];
    ClassI = json['ClassI'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ClassG'] = this.ClassG;
    data['ResultId'] = this.ResultId;
    data['ClassI'] = this.ClassI;
    return data;
  }
}

