
import 'package:flutter/material.dart';
import 'package:learncallapi/base/base_page_model.dart';
import 'package:learncallapi/models/company_model.dart';
import 'package:learncallapi/services/company_service.dart';

class CompanyModel extends BasePageModel {
  final companyervice = CompanyService();
  List<Company> company = [];
  bool _isLoading = false;
  initData() async {
    this.setBusy(true);
   _getEvent();
    this.setBusy(false);
  }

  void _getEvent() async {
    
    company = await companyervice.getEvent();
    print('.............${company}');
  }
}