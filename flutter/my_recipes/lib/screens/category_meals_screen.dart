import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static final String routeName = '/category-meal';
  final List<Meal> avaliableMeals ;
  Function selectedMeals;

  CategoryMealsScreen(this.avaliableMeals,this.selectedMeals);



  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['categoryId'];
      displayedMeals = widget.avaliableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
    
          return MealItem(
            displayedMeals[index].id,
             displayedMeals[index].title,
             displayedMeals[index].imageUrl,
             displayedMeals[index].duration,
             displayedMeals[index].complexity,
              displayedMeals[index].affordability,

          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
