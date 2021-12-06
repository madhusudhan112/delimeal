import 'package:flutter/material.dart';
import 'package:mealapp/screens/meal_details.dart';
import '../screens/categories_screen.dart';
import '../screens/category_meal.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meal App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMeal.routeName: (ctx) => CategoryMeal(),
        MealDetails.routeName: (ctx) => MealDetails(),
      },
    );
  }
}