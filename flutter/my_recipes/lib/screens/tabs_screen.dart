import 'package:flutter/material.dart';
import 'package:my_recipes/models/meal.dart';

import '../screens/categories_screen.dart';
import '../screens/favorites_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoritedMeals;
  TabsScreen(this.favoritedMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions;
  @override
  void initState() {
    // burda State widget.blabla yı kabul etmiyo onun için inidState içinde kabul edebildik 
    // TODO: implement initState
    _widgetOptions = <Widget>[
      CategoriesScreen(),
      FavoriteScreen(widget.favoritedMeals)
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text("Tab Bar"),
        ),
        body: Center(
          child: _widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black45,
          unselectedItemColor: Colors.black87,
          currentIndex: selectedIndex,
          backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.category,
                  color: Colors.black87,
                ),
                title: Text("Category")),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.star, color: Colors.black87),
                title: Text("Fşlters"))
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
