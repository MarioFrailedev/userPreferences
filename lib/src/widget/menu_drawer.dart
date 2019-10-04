import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:user_preferences/src/pages/home_page.dart';
import 'package:user_preferences/src/pages/setting_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GestureDetector(
            child: DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/menu-img.jpg'),
                  fit: BoxFit.cover
                )
              ), child: null,
          ),
          ),
          
          ListTile(
            leading: Icon( Icons.home, color: Colors.blue),
            title: Text('Home'),
            onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon( FontAwesomeIcons.user, color: Colors.blue),
            title: Text('Perfil'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue),
            title: Text('Ajustes'),
            onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName),
          ),
        ],
      ),
    );
  }
}