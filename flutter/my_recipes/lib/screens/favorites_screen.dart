import 'package:flutter/material.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatefulWidget {
  static const String routeName = "/filters-screen";
  final List<Meal> favoritedMeals;
FavoriteScreen(this.favoritedMeals);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("favorites"),
    );
  }
}