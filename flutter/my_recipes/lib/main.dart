import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screens/filter_screen.dart';
import './screens/favorites_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    "gluten": false,
    "lactose": false,
    "vegan": false,
    "vegetarian": false,
  };
    List<Meal> _availableMeals = DUMMY_MEALS;
    List<Meal> _favoritedMeals = [];

  void _selectedFilters(Map<String, bool> filteredConditions) {
    //intialize olduktan sonra datayı alabilmek için setState durumunu kullanıyoruz taşıma işini yapabılıyo yoksa data kaybolur
    setState() {
        filters = filteredConditions;
      _availableMeals = DUMMY_MEALS.where((forMeal) {
        //filtrele gore yemekleri sec
        // filtrelerden gelen value ve modelin value si ok sa return don

        if (filters['gluten'] && !forMeal.isGlutenFree) {
          return false;
        } else if (filters['lactose'] && !forMeal.isLactoseFree) {
          return false;
        } else if (filters['vegan'] && !forMeal.isVegan) {
          return false;
        } else if (filters['vegetarian'] && !forMeal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delimeals',
      theme: ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.pink,
          canvasColor: Colors.white,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
                bodyText2: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(20, 51, 51, 1)),
              )),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoritedMeals),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals,_selectedFilters),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FavoriteScreen.routeName: (ctx) =>
            FiltersScreen(filters, _selectedFilters)
      },
      onGenerateRoute: (ctx) {
        return MaterialPageRoute(builder: (context) {
          return CategoriesScreen();
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CategoriesScreen();
  }
}
