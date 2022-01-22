class Companys {
  List<Company> items = [];

  Companys();

  Companys.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Company.fromJson(item);
      items.add(pelicula);
    }
  }
}

class Company {
  int? ResultId;
  String? DescriptionA;
  dynamic UpdatedTime;
  String? DescriptionC;

  Company({
    this.ResultId,
    required this.DescriptionA,
    required this.UpdatedTime,
  });

  Company.fromJson(Map<dynamic, dynamic> json) {
    ResultId = json['ResultId'];
    DescriptionA = json['DescriptionA'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DescriptionB'] = this.DescriptionA;
    data['DescriptionB'] = this.UpdatedTime;
    data['ResultId'] = this.ResultId;
    return data;
  }
}

final List<Company> companys = [
  Company(
    ResultId: 200770,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200769,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200768,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
  Company(
    ResultId: 200766,
    UpdatedTime: '2022-01-13T00:13:59',
    DescriptionA: '評価システム入力お願いします。\nメールアドレスとパスワードでログインできます。',
  ),
];
