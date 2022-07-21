import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _timevariable = prefs.getString('ff_timevariable') ?? _timevariable;
    _sdkvjbosjdbv = prefs.containsKey('ff_sdkvjbosjdbv')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_sdkvjbosjdbv'))
        : null;
    _endtime = prefs.containsKey('ff_endtime')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_endtime'))
        : null;
  }

  SharedPreferences prefs;

  String _timevariable = '';
  String get timevariable => _timevariable;
  set timevariable(String _value) {
    _timevariable = _value;
    prefs.setString('ff_timevariable', _value);
  }

  DateTime _sdkvjbosjdbv = DateTime.fromMillisecondsSinceEpoch(1657774800000);
  DateTime get sdkvjbosjdbv => _sdkvjbosjdbv;
  set sdkvjbosjdbv(DateTime _value) {
    _sdkvjbosjdbv = _value;
    prefs.setInt('ff_sdkvjbosjdbv', _value.millisecondsSinceEpoch);
  }

  DateTime _endtime = DateTime.fromMillisecondsSinceEpoch(1657654200000);
  DateTime get endtime => _endtime;
  set endtime(DateTime _value) {
    _endtime = _value;
    prefs.setInt('ff_endtime', _value.millisecondsSinceEpoch);
  }

  bool editable = true;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
