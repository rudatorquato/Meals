import 'package:flutter/material.dart';
import 'package:meals/meal/models/meal.dart';
import 'package:meals/meal/widgets/meal_item/meal_item_widget.dart';

import '../../models/category_model.dart';

// ignore: use_key_in_widget_constructors
class CategoriesMeals extends StatelessWidget {
  final List<Meal> meals;

  //const CategoriesMeals(this.meals);
  const CategoriesMeals(
    this.meals, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            categoryMeals[index],
          );
        },
      ),
    );
  }
}
