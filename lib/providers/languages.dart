import 'package:flutter/material.dart';

class Languages with ChangeNotifier{
  Locale _locale = Locale('en');
  String _dropValue = 'en';
  String get dropValue{
    return _dropValue;
  }
  Locale get locale {
    return _locale;
  }
  void changeLanguage(Locale newLocale,String newDropValue){
    _dropValue = newDropValue;
    _locale = newLocale;
    notifyListeners();
  }
}