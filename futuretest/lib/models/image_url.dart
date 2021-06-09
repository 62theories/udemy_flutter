import 'package:flutter/foundation.dart';

class ImageUrl extends ChangeNotifier {
  String _url = '';

  String get url => _url;

  set url(String url) {
    _url = url;
    notifyListeners();
  }
}
