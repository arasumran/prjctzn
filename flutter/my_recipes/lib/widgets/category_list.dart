import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryList extends StatelessWidget {
  final String categoryId;
  final String title;
  final Color color;
  CategoryList({this.title, this.color,this.categoryId});
  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(CategoryMealsScreen.routeName, arguments: {'title': title,'categoryId':categoryId});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(14),
      child: Container(
          padding: EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.7), color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
