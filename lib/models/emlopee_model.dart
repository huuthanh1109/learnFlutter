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
  dynamic UpdatedTime;

  Emlopee({
    this.ResultId,
    this.UpdatedTime,
  });

  Emlopee.fromJson(Map<dynamic, dynamic> json) {
    ResultId = json['ResultId'];
    UpdatedTime = json['UpdatedTime'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UpdatedTime'] = this.UpdatedTime;
    data['ResultId'] = this.ResultId;
    return data;
  }
}

final List<Emlopee> emlopees = [
  Emlopee(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
  ),
  Emlopee(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
  ),
  Emlopee(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
  ),
  Emlopee(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
  ),
  Emlopee(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
  ),
  Emlopee(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
  ),
];
