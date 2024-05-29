import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
    _safeInit(() {
      _navTestOpen = prefs.getBool('ff_navTestOpen') ?? _navTestOpen;
    });
    _safeInit(() {
      _readActivity = prefs
              .getStringList('ff_readActivity')
              ?.map((path) => path.ref)
              .toList() ??
          _readActivity;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool _value) {
    _navOpen = _value;
    prefs.setBool('ff_navOpen', _value);
  }

  bool _navTestOpen = false;
  bool get navTestOpen => _navTestOpen;
  set navTestOpen(bool _value) {
    _navTestOpen = _value;
    prefs.setBool('ff_navTestOpen', _value);
  }

  List<DocumentReference> _readActivity = [];
  List<DocumentReference> get readActivity => _readActivity;
  set readActivity(List<DocumentReference> _value) {
    _readActivity = _value;
    prefs.setStringList('ff_readActivity', _value.map((x) => x.path).toList());
  }

  void addToReadActivity(DocumentReference _value) {
    _readActivity.add(_value);
    prefs.setStringList(
        'ff_readActivity', _readActivity.map((x) => x.path).toList());
  }

  void removeFromReadActivity(DocumentReference _value) {
    _readActivity.remove(_value);
    prefs.setStringList(
        'ff_readActivity', _readActivity.map((x) => x.path).toList());
  }

  void removeAtIndexFromReadActivity(int _index) {
    _readActivity.removeAt(_index);
    prefs.setStringList(
        'ff_readActivity', _readActivity.map((x) => x.path).toList());
  }

  void updateReadActivityAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _readActivity[_index] = updateFn(_readActivity[_index]);
    prefs.setStringList(
        'ff_readActivity', _readActivity.map((x) => x.path).toList());
  }

  void insertAtIndexInReadActivity(int _index, DocumentReference _value) {
    _readActivity.insert(_index, _value);
    prefs.setStringList(
        'ff_readActivity', _readActivity.map((x) => x.path).toList());
  }

  DocumentReference? _assignedUser;
  DocumentReference? get assignedUser => _assignedUser;
  set assignedUser(DocumentReference? _value) {
    _assignedUser = _value;
  }

  final _activityUserManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> activityUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _activityUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearActivityUserCache() => _activityUserManager.clear();
  void clearActivityUserCacheKey(String? uniqueKey) =>
      _activityUserManager.clearRequest(uniqueKey);

  final _myCompanyManager = FutureRequestManager<CompaniesRecord>();
  Future<CompaniesRecord> myCompany({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<CompaniesRecord> Function() requestFn,
  }) =>
      _myCompanyManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMyCompanyCache() => _myCompanyManager.clear();
  void clearMyCompanyCacheKey(String? uniqueKey) =>
      _myCompanyManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
