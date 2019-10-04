import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/home_page.dart';
import 'package:user_preferences/src/pages/setting_page.dart';
import 'package:user_preferences/src/share_prefs/prefs_user.dart';
 
void main() async {

  final prefs = new UserPrefs();
  await prefs.initPrefs();
  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {
  final prefs = new UserPrefs();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      debugShowCheckedModeBanner: false,
      initialRoute: prefs.lastPage,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(),
        SettingsPage.routeName : (BuildContext context) => SettingsPage(),
      },
    );
  }
}