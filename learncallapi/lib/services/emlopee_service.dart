import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learncallapi/config/api_config.dart';
import 'package:learncallapi/models/emlopee_model.dart';

class EmlopeeService {
  Future<List<Emlopee>> getEvent() async {
    final url = Uri.parse(ApiConfig.baseApi);
    final resp = await http.post(
      url,
      headers: {'Accept': 'application/json'},
      body: {
        "ApiKey": ApiConfig.apiKey,
      },
    );
    final decodedData = json.decode(resp.body);
    // final decodedData1 = json.decode(resp.statusCode);
    final peliculas = Emlopees.fromJsonList(decodedData['Response']['Data']);

    return peliculas.items;
  }
}
