import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  bool _hgsim = false;
  bool get hgsim => _hgsim;
  set hgsim(bool value) {
    _hgsim = value;
  }

  bool _hgnao = false;
  bool get hgnao => _hgnao;
  set hgnao(bool value) {
    _hgnao = value;
  }

  bool _dpcredito = false;
  bool get dpcredito => _dpcredito;
  set dpcredito(bool value) {
    _dpcredito = value;
  }

  bool _dpdebito = false;
  bool get dpdebito => _dpdebito;
  set dpdebito(bool value) {
    _dpdebito = value;
  }

  bool _dpSalvar = false;
  bool get dpSalvar => _dpSalvar;
  set dpSalvar(bool value) {
    _dpSalvar = value;
  }

  bool _ncCredito = false;
  bool get ncCredito => _ncCredito;
  set ncCredito(bool value) {
    _ncCredito = value;
  }

  bool _ncDebito = false;
  bool get ncDebito => _ncDebito;
  set ncDebito(bool value) {
    _ncDebito = value;
  }

  bool _ncSalvar = false;
  bool get ncSalvar => _ncSalvar;
  set ncSalvar(bool value) {
    _ncSalvar = value;
  }
}
