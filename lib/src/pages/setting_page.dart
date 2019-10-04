import 'package:flutter/material.dart';
import 'package:user_preferences/src/share_prefs/prefs_user.dart';
import 'package:user_preferences/src/widget/menu_drawer.dart';

class SettingsPage extends StatefulWidget {
  
  static final routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  
  bool _secondColor;
  int _gender;
  String _name = 'Rick Snachez ';

  final prefs = new UserPrefs();

  TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _gender = prefs.gender;
    _secondColor = prefs.secondColor;

    _textController = new TextEditingController( text: _name);
  }

  

  _setSelectedGender(int value )  {

    prefs.gender = value;
    _gender = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Text('Settings', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
          ),
          Divider(),
          SwitchListTile(
            value: _secondColor,
            title: Text('Color Secundario'),
            onChanged: (value) {
              setState(() {
                _secondColor = value;
                prefs.secondColor = value;
              });
            },
          ),

          RadioListTile(
            value: 2,
            title: Text('Masculino'),
            groupValue: _gender,
            onChanged: _setSelectedGender,
           
          ),

          RadioListTile(
            value: 1,
            title: Text('Femenino'),
            groupValue: _gender,
            onChanged: _setSelectedGender,
          ),

          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de usuario'
              ),
              onChanged: ( value ) {},
            ),
          ),

        ],
      )
    );
  }
}