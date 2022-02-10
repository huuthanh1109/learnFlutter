import 'package:flutter/material.dart';
import 'package:learncallapi/models/company_model.dart';
import 'package:learncallapi/services/company_service.dart';

class CompanyModel with ChangeNotifier {
  final companyService = CompanyService();
  bool _isLoading = false;
  List<Company> company = [];

  CompanyModel() {
    getEvent();
  }

  setLoading(bool loading) async {
    _isLoading = loading;
    notifyListeners();
  }

  getEvent() async {
    setLoading(true);
    this.company = await companyService.getEvent();
    setLoading(false);
    notifyListeners();
  }
}
