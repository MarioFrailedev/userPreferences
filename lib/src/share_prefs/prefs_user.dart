import 'package:shared_preferences/shared_preferences.dart';

class UserPrefs {

  static final UserPrefs _instance = new UserPrefs._internal();

  factory UserPrefs() {
    return _instance;
  }
  UserPrefs._internal();

  SharedPreferences _prefs;

  initPrefs() async {
   _prefs = await SharedPreferences.getInstance();
  }

  //get y set gender

  get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  set gender(int value) {
    _prefs.setInt('gender', value);
  }

//get y set second color
 get secondColor {
    return _prefs.getBool('secondColor') ?? false;
  }

 set secondColor( bool value ) {
    _prefs.setBool('secondColor', value);
  }

 //get y set name 
 get userName {
    return _prefs.getString('userName') ?? 'Rick Sanchez';
  }

 set userName( String value ) {
    _prefs.setString('userName', value);
  }

  //get y set last page
 get lastPage {
    return _prefs.getString('lastPage') ?? 'home';
  }

 set lastPage( String value ) {
    _prefs.setString('lastPage', value);
  }

 /*  //no se usan
  bool  _secondColor;
  int  _gender;
  String _name;
 */

}