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

  String _draftAvatarUrl = '';
  String get draftAvatarUrl => _draftAvatarUrl;
  set draftAvatarUrl(String value) {
    _draftAvatarUrl = value;
  }

  bool _showInfoCard = false;
  bool get showInfoCard => _showInfoCard;
  set showInfoCard(bool value) {
    _showInfoCard = value;
  }

  String _selectedPinName = '';
  String get selectedPinName => _selectedPinName;
  set selectedPinName(String value) {
    _selectedPinName = value;
  }

  String _selectedPinImage = '';
  String get selectedPinImage => _selectedPinImage;
  set selectedPinImage(String value) {
    _selectedPinImage = value;
  }

  String _selectedPinDescription = '';
  String get selectedPinDescription => _selectedPinDescription;
  set selectedPinDescription(String value) {
    _selectedPinDescription = value;
  }
}
