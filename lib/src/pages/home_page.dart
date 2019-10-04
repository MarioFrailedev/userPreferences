import 'package:flutter/material.dart';
import 'package:user_preferences/src/share_prefs/prefs_user.dart';
import 'package:user_preferences/src/widget/menu_drawer.dart';

class HomePage extends StatelessWidget {
  
  static final routeName = 'home';
  final prefs = new UserPrefs();


  @override
  Widget build(BuildContext context) {
    prefs.lastPage = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
        backgroundColor: (prefs.secondColor) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${prefs.secondColor}'),
          Divider(),
          Text('Genero: ${ prefs.gender }'),
          Divider(),
          Text('Nombre de Usuario: ${ prefs.userName }'),
          Divider(),
        ],
      ),
    );
  }
}