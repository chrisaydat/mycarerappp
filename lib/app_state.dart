import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _bookingtime = '';
  String get bookingtime => _bookingtime;
  set bookingtime(String value) {
    _bookingtime = value;
  }

  bool _pastbookings = false;
  bool get pastbookings => _pastbookings;
  set pastbookings(bool value) {
    _pastbookings = value;
  }

  bool _upcomingbookings = false;
  bool get upcomingbookings => _upcomingbookings;
  set upcomingbookings(bool value) {
    _upcomingbookings = value;
  }
}
