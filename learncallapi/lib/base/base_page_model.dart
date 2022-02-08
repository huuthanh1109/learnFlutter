import 'package:flutter/material.dart';

class ResponseObject {
  int statusCode = -1;
  dynamic data;
  String errorCode = '';
  String errorMessage = '';
  ResponseObject();
}
class BasePageModel extends ChangeNotifier {
  bool _busy = false;
  dynamic _errorMessage;
  dynamic _errorCode;

  bool get busy => _busy;
  String get errorMessage => _errorMessage;
  String get errorCode => _errorCode;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  handleErrors(dynamic response, BuildContext context, {bool isShowPopup = true, required final Function(bool) callback}) async {
    this.setBusy(false);
    if (response is ResponseObject) {
      // AppPopup.showErrorMessage(context, '${GlobalLocale.unknownError} : ${response.toString()}');
      return response;
    }

    _errorMessage = response.errorMessage;
    _errorCode = response.errorCode;

    if (isShowPopup == true) {
      if (_errorMessage == null || _errorMessage == '') {
        _errorMessage = _errorCode;
      }
      // AppPopup.showErrorMessage(context, _errorMessage);
      if (callback != null) callback(true);
    }
    return response;
  }
}
