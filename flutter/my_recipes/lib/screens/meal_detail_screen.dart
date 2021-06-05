import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((meal) => meal.id == args['id']);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            
            child:
                // objeni belirli bir şekle sokmak icin zorlama
                ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(
                selectedMeal.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child:
                Text("Ingredients", style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(1),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Text(selectedMeal.ingredients[index])),
                itemCount: selectedMeal.ingredients.length,
              ))
        ],
      ),
    );
  }
}
