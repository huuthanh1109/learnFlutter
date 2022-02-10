import 'package:flutter/material.dart';
import 'package:learncallapi/models/emlopee_model.dart';
import 'package:learncallapi/services/emlopee_service.dart';

class CompanyModel with ChangeNotifier {
  final emplopeeService = EmlopeeService();
  bool _isLoading = false;
  List<Emlopee> company = [];

  // List myList = [];
  ScrollController _scrollController = ScrollController();
  static int page = 10;

  CompanyModel() {
    getEvent();
  }

  setLoading(bool loading) async {
    _isLoading = loading;
    notifyListeners();
  }

  getEvent() async {
    setLoading(true);
    this.company = await emplopeeService.getEvent();
    setLoading(false);
    notifyListeners();
  }
}
