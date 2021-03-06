import 'package:flutter/cupertino.dart';

enum Complexity { Simple, Challenging, Hard }
enum Affordability{
  Luxurious,Affordable,
  Pricey

}

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal(
      {@required this.id,
      @required this.title,
      @required this.categories,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      this.complexity = Complexity.Simple,
      this.isGlutenFree,this.isLactoseFree,this.isVegan,this.isVegetarian,this.affordability});
}
