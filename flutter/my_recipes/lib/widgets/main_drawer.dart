import 'package:flutter/material.dart';
import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget listTile(String title, IconData icon, Function tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black54,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),
      ),
      onTap: tabHandler
      // gidecek yeri buraya yazıyoz
      ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "BaşlıkBaşaKaldı",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.yellowAccent,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listTile("Meal", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
            
          }),
          listTile("Filters", Icons.star, () {
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);

          }),
          listTile("Settings", Icons.settings, () {})
        ],
      ),
    );
  }
}
