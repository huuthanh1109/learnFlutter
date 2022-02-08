import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learncallapi/config/api_config.dart';
import 'package:learncallapi/models/company_model.dart';

class CompanyService {
  var body = jsonEncode({"ApiKey": ApiConfig.apiKey});
  Future<List<Company>> getEvent() async {
    final url = Uri.parse("${ApiConfig.baseApi}/7/get");
    final resp = await http.post(
      url,
      headers: {'Accept': 'application/json'},
      body: body,
    );
    final decodedData = json.decode(resp.body);
    final peliculas = Companys.fromJsonList(decodedData['Response']['Data']);

    return peliculas.items;
  }
}
