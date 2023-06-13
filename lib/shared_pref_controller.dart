import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController {

  SharedPrefController._internal();

  late SharedPreferences _sharedPreferences ;
  static SharedPrefController? _instance ;

  factory SharedPrefController(){
    return _instance ??= SharedPrefController._internal();
  }

  Future<void> initPref() async{
     _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save() async{
    await _sharedPreferences.setBool("on_boarding", true);
  }

  bool get onBoarding =>
      _sharedPreferences.getBool("on_boarding")?? false ;
}