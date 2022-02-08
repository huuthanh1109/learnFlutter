import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learncallapi/config/api_config.dart';
import 'package:learncallapi/models/emlopee_model.dart';

class EmlopeeService {
  var body = jsonEncode({"ApiKey": ApiConfig.apiKey});
  Future<List<Emlopee>> getEvent() async {
    final url = Uri.parse("${ApiConfig.baseApi}/4/get");
    final resp = await http.post(
      url,
      headers: {'Accept': 'application/json'},
      body: body,
    );
    final decodedData = json.decode(resp.body);
    final peliculas = Emlopees.fromJsonList(decodedData['Response']['Data']);

    return peliculas.items;
  }
}
